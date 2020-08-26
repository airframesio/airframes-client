#!/usr/bin/env python3

import multiprocessing
import subprocess
import shlex

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

class AcarsdecClientInput(ClientInput):
  input_type = 'acarsdec'
  command = 'acarsdec'
  gain = 40
  frequencies = ''

  def params(self):
    return '-v -o 4 -g {gain} -i {ident} -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=self.frequencies)

class Vdlm2decClientInput(ClientInput):
  input_type = 'vdlm2dec'
  command = 'vdlm2dec'
  gain = 400
  frequencies = ''

class Dumpvdl2ClientInput(ClientInput):
  input_type = 'dumpvdl2'
  command = 'dumpvdl2'
  gain = 40
  frequencies = ''

  def params(self):
    return '--rtlsdr {receiver} --gain {gain} {frequencies} --output decoded:json:file:path=-'.format(receiver=self.receiver, gain=self.gain, frequencies=self.frequencies)


def start_client_input(client_input):
  """Start and handle a ClientInput"""
  print('Started {}.'.format(client_input.input_type))
  print(client_input.full_command())
  process = subprocess.Popen(shlex.split(client_input.full_command()),
    stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True
  )
  while True:
    output = process.stdout.readline()
    print('[{}] {}'.format(client_input.input_type, output.strip()))
    return_code = process.poll()
    if return_code is not None:
      print('[{}] Exited: {}'.format(client_input.input_type, return_code))
      for output in process.stdout.readlines():
        print('[{}] {}'.format(client_input.input_type, output.strip()))
      for output in process.stderr.readlines():
        print('[{}] Error: {}'.format(client_input.input_type, output.strip()))
      break

if __name__ == '__main__':
  inputs = []

  input1 = AcarsdecClientInput()
  input1.receiver = "0"
  input1.ident = "KE-KMHR1"
  input1.frequencies = "131.550 131.525 131.725 130.025 130.450 131.125"
  inputs.append(input1)

  input2 = Dumpvdl2ClientInput()
  input2.receiver = "1"
  input2.frequencies = "136650000 136800000 136975000"
  inputs.append(input2)

  print('Client Inputs')
  for client_input in inputs:
    print("  - {} (receiver: {}, command: {}, params: {})".format(client_input.input_type, client_input.receiver, client_input.command_path(), client_input.params()))
  print()

  processes = []
  for client_input in inputs:
    p = multiprocessing.Process(target=start_client_input, args=(client_input,))
    processes.append(p)
    p.start()
