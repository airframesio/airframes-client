#!/usr/bin/env python3

import multiprocessing
from multiprocessing.managers import BaseManager, SyncManager
import subprocess
import shlex
import logging
import sys
import threading
import os
import json
from time import sleep

class ClientInput:
  input_type = 'unknown'
  command = None
  path = '/usr/local/bin'

  def params(self):
    return None

  def command_path(self):
    return '{}/{}'.format(self.path, self.command)

  def full_command(self):
    return '{command_path} {params}'.format(command_path=self.command_path(), params=self.params())

  def version(self):
    return None

class AcarsdecClientInput(ClientInput):
  input_type = 'acarsdec'
  command = 'acarsdec'
  gain = 40
  frequencies = ''

  def params(self):
    return '-v -o 4 -g {gain} -i {ident} -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=self.frequencies)

  def system_version(self):
    return os.system('acarsdec 2>&1 | head -2 | tail -1 | cut -d " " -f 2').strip()

class Vdlm2decClientInput(ClientInput):
  input_type = 'vdlm2dec'
  command = 'vdlm2dec'
  gain = 200
  frequencies = '136.650 136.800 136.975'

  def params(self):
    return '-v -J -G -E -U -g {gain} -i {ident} -j 0.0.0.0:5555 -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=self.frequencies)

  def system_version(self):
    return os.system('vdlm2dec -h 2>&1 | head -2 | tail -1 | cut -d " " -f 2').strip()

class Dumpvdl2ClientInput(ClientInput):
  input_type = 'dumpvdl2'
  command = 'dumpvdl2'
  gain = 40
  frequencies = ''

  def params(self):
    return '--rtlsdr {receiver} --gain {gain} {frequencies} --output decoded:json:file:path=-'.format(receiver=self.receiver, gain=self.gain, frequencies=self.frequencies)

  def system_version(self):
    return os.system('dumpvdl2 --version').strip()


class LogPipe(threading.Thread):

    def __init__(self, level):
        """Setup the object with a logger and a loglevel
        and start the thread
        """
        threading.Thread.__init__(self)
        self.daemon = False
        self.level = level
        self.fdRead, self.fdWrite = os.pipe()
        self.pipeReader = os.fdopen(self.fdRead)
        self.start()

    def fileno(self):
        """Return the write file descriptor of the pipe
        """
        return self.fdWrite

    def run(self):
        """Run the thread, logging everything.
        """
        for line in iter(self.pipeReader.readline, ''):
            logging.log(self.level, line.strip('\n'))

        self.pipeReader.close()

    def close(self):
        """Close the write end of the pipe.
        """
        os.close(self.fdWrite)


def start_client_input(queue, client_input):
  """Start and handle a ClientInput"""
  log_file = '/var/log/airframes/{}.log'.format(client_input.input_type)
  logging.basicConfig(format='%(asctime)s: %(message)s', level=logging.INFO, handlers=[logging.FileHandler(log_file)], datefmt='%Y-%m-%d %H:%M:%S')
  logpipe = LogPipe(logging.INFO)

  logging.info('Started {}.'.format(client_input.input_type))
  with subprocess.Popen(shlex.split(client_input.full_command()),
    stdout=subprocess.PIPE, stderr=logpipe, universal_newlines=True) as process:
    try:
      while True:
        stdout = process.stdout.readline().strip()
        frame = {
          'source': {
            'app': {
              'name': client_input.input_type
            }
          },
          'payload': stdout
        }
        json_string = json.dumps(frame)
        print('[{}] {}'.format(client_input.input_type, json_string))
        queue.put(json_string)

        return_code = process.poll()
        if return_code is not None:
          print('[{}] Exited: {}'.format(client_input.input_type, return_code))
          for output in process.stdout.readlines():
            print('[{}] {}'.format(client_input.input_type, output.strip()))
          break
    except KeyboardInterrupt:
      pass
    except:
      print('Unexpected Exception: {}. Forcefully shutting down child exec process for {}'.format(sys.exc_info()[0], client_input.input_type))
      logpipe.close()
      process.kill()
    else:
      print('Sanely shutting down {}', client_input.input_type)
      logpipe.close()

if __name__ == '__main__':
  inputs = []

  with AcarsdecClientInput() as inp:
    inp.receiver = "0"
    inp.gain = 48
    inp.ident = "KE-KMHR1"
    inp.frequencies = "131.550 131.525 131.725 130.025 130.450 131.125"
    inputs.append(inp)

  with Vdlm2decClientInput() as inp:
    inp.receiver = "0"
    inp.gain = 200
    inp.ident = "KE-KMHR2"
    inp.frequencies = "136.650 136.800 136.975"
    inputs.append(inp)

  # with Dumpvdl2ClientInput() as inp:
  #   inp.receiver = "1"
  #   inp.frequencies = "136650000 136800000 136975000"
  #   inputs.append(inp)

  print('Client Inputs')
  for client_input in inputs:
    print("  - {} (receiver: {}, command: {}, params: {})".format(client_input.input_type, client_input.receiver, client_input.command_path(), client_input.params()))
  print()

  processes = []
  try:
    queue = multiprocessing.Queue()
    for client_input in inputs:
      p = multiprocessing.Process(target=start_client_input, args=(queue, client_input,))
      p.name = client_input.input_type
      processes.append(p)
      p.start()
    while True:
      json_string = queue.get()
      print("[MAIN] child sent me: {}".format(json_string))
    for p in processes:
      p.join()
  except KeyboardInterrupt:
    print('Keyboard interrupt, shutting down processes...')
    sys.stdout.flush()
    for p in processes:
      print('Shutting down {}'.format(p.name))
      sys.stdout.flush()
      p.terminate()
      p.join()
