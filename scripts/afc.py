#!/usr/bin/env python3

"""The Python implementation of the Airframes Client."""

import multiprocessing
from multiprocessing.managers import BaseManager, SyncManager
import subprocess
import shlex

import logging
import sys
import threading
import os
import platform
import json
from time import sleep
import socket
import grpc
import distro

import airframes_client_frame_pb2
import airframes_client_frame_pb2_grpc

class Output:
  def __init__(self, raw_config_data):
    print(raw_config_data)
    self.raw_config_data = raw_config_data
    self.output_type = raw_config_data['type']
    self.format = raw_config_data['format']
    self.uname = os.uname()

  def output_name(self):
    return '{}'.format(self.output_type)

class UDPNetOutput(Output):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.hostname = raw_config_data['hostname']
    self.port = raw_config_data['port']

  def output_name(self):
    return '{}:{}:{}'.format(self.output_type, self.hostname, self.port)

class AirframesGRPCOutput(Output):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.hostname = raw_config_data['hostname']
    self.port = raw_config_data['port']
    self.channel = grpc.insecure_channel('{}:{}'.format(self.hostname, self.port))
    self.stub = airframes_client_frame_pb2_grpc.AirframesStub(self.channel)

  def output_name(self):
    return '{}:{}:{}'.format(self.output_type, self.hostname, self.port)

  def create_app(self, client_input):
    host_type = airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.UNKNOWN_APP_TYPE;
    apps = {
      'acarsdec': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.ACARSDEC,
      'dumpvdl2': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.DUMPVDL2,
      'vdlm2dec': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.VDLM2DEC
    }
    if list(filter(client_input.name.startswith, apps.keys())) != []:
      for prefix in apps.keys():
        if client_input.name.startswith(prefix):
          host_type = apps[prefix]

    return airframes_client_frame_pb2.AirframesClientFrame.Source.App(
      type=host_type,
      version=client_input.system_version()
    )

  def create_host(self):
    platforms = {
      'armv6': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.ARM_V6,
      'armv7': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.ARM_V7,
      'aarch64': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.ARM_64,
      'armv8': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.ARM_64,
      'i386': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.X86_32,
      'i686': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.X86_32,
      'x86_64': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.X86_64
    }
    oses = {
      'Darwin': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.OperatingSystem.MACOS,
      'Linux': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.OperatingSystem.LINUX,
      'Windows': airframes_client_frame_pb2.AirframesClientFrame.Source.Host.OperatingSystem.WINDOWS
    }

    host_platform = airframes_client_frame_pb2.AirframesClientFrame.Source.Host.Platform.UNKNOWN_PLATFORM
    machine = platform.machine()
    if list(filter(machine.startswith, platforms.keys())) != []:
      for prefix in platforms.keys():
        if machine.startswith(prefix):
          host_platform = platforms[prefix]

    host_os = airframes_client_frame_pb2.AirframesClientFrame.Source.Host.OperatingSystem.UNKNOWN_OPERATING_SYSTEM
    system = platform.system()
    if list(filter(system.startswith, oses.keys())) != []:
      for prefix in oses.keys():
        if system.startswith(prefix):
          host_os = oses[prefix]

    host_version = distro.name(pretty=True)

    host = airframes_client_frame_pb2.AirframesClientFrame.Source.Host(
      platform=host_platform,
      os=host_os,
      version=host_version,
      node_name=platform.node(),
      node_ip=socket.gethostbyname(socket.gethostname())
    )
    return host

  def create_airframes_message_frame(self, client_input, message):
    app = self.create_app(client_input)
    source = airframes_client_frame_pb2.AirframesClientFrame.Source(
      app=app,
      host=self.create_host()
    )

    if client_input.name == 'acarsdec':
      acarsdec_message = airframes_client_frame_pb2.AcarsdecMessage(
        timestamp=message['timestamp'],
        station_id=message.setdefault('station_id', None),
        channel=message.setdefault('channel', None),
        frequency=message.setdefault('freq', None),
        level=message.setdefault('level', None),
        error=message.setdefault('error', None),
        mode=message.setdefault('mode', None),
        label=message.setdefault('label', None),
        block_id=message.setdefault('block_id', None),
        ack=message.setdefault('ack', None) if ('ack' in message.keys() and message['ack'] != False) else None,
        tail=message.setdefault('tail', None),
        flight=message.setdefault('flight', None),
        message_number=message.setdefault('msgno', None),
        text=message.setdefault('text', None),
        end=message.setdefault('end', None)
      )
      grpc_frame = airframes_client_frame_pb2.AirframesClientFrame(
        source=source,
        acarsdec_message=acarsdec_message
      )
      return grpc_frame
    elif client_input.name == 'vdlm2dec':
      vdlm2dec_message = airframes_client_frame_pb2.Vdlm2decMessage(
        timestamp=message['timestamp'],
        station_id=message.setdefault('station_id', None),
        channel=message.setdefault('channel', None),
        frequency=message.setdefault('freq', None),
        from_icao=message.setdefault('icao', None),
        to_icao=message.setdefault('toaddr', None),
        level=message.setdefault('level', None),
        error=message.setdefault('error', None),
        mode=message.setdefault('mode', None),
        label=message.setdefault('label', None),
        block_id=message.setdefault('block_id', None),
        ack=message.setdefault('ack', None) if ('ack' in message.keys() and message['ack'] != False) else None,
        tail=message.setdefault('tail', None),
        flight=message.setdefault('flight', None),
        message_number=message.setdefault('msgno', None),
        text=message.setdefault('text', None),
        end=message.setdefault('end', None),
        departure_airport=message.setdefault('depa', None),
        destination_airport=message.setdefault('dsta', None),
        arrival_eta=message.setdefault('eta', None),
        gate_out=message.setdefault('gtout', None),
        ground_off=message.setdefault('wloff', None),
        ground_on=message.setdefault('wlon', None),
        gate_in=message.setdefault('gtin', None)
      )
      grpc_frame = airframes_client_frame_pb2.AirframesClientFrame(
        source=source,
        vdlm2dec_message=vdlm2dec_message
      )
      return grpc_frame
    else:
      print("Not a known client app type, so not going to send a protobuf frame.")
      pass

  def send_message(self, message, client_input):
    print("AirframesGRPCOutput: Sending {} from {}".format(message, client_input))
    grpc_frame = self.create_airframes_message_frame(client_input, message)
    self.stub.SendFrame(grpc_frame)

class LogfileOutput(Output):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.path = raw_config_data['path']

  def output_name(self):
    return '{}:{}'.format(self.output_type, self.path)

class ClientInput:
  def __init__(self, raw_config_data):
    print(raw_config_data)
    self.raw_config_data = raw_config_data
    self.input_type = raw_config_data['input']['type']
    self.name = raw_config_data['input']['name']
    self.path = raw_config_data['input']['path']
    self.raw_input_config = raw_config_data['input']['config']
    self.outputs = []

    output_classes = {
      'logfile': LogfileOutput,
      'net:grpc': AirframesGRPCOutput,
      'net:udp': UDPNetOutput
    }
    for o in raw_config_data['outputs']:
      output = output_classes[o['type']](o)
      self.outputs.append(output)

  def __enter__(self): return self
  def __exit__(self, *args): pass

  def params(self):
    return None

  def command_path(self):
    return '{}'.format(self.path)

  def full_command(self):
    return '{command_path} {params}'.format(command_path=self.command_path(), params=self.params())

  def system_version(self):
    return None

class AcarsdecClientInput(ClientInput):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.receiver = self.raw_input_config['receiver']
    self.gain = self.raw_input_config['gain']
    self.ident = self.raw_input_config['ident']
    self.frequencies = self.raw_input_config['frequencies']
    self.verbose = self.raw_input_config['verbose']

  def params(self):
    return '-v -o 4 -g {gain} -i {ident} -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=" ".join(self.frequencies))

  def system_version(self):
    cmd = 'acarsdec 2>&1 | head -2 | tail -1 | cut -d " " -f 2'
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf-8')
    return result.strip() if (result != None) else None

class Vdlm2decClientInput(ClientInput):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.receiver = self.raw_input_config['receiver']
    self.gain = self.raw_input_config['gain']
    self.ident = self.raw_input_config['ident']
    self.frequencies = self.raw_input_config['frequencies']

  def params(self):
    return '-v -J -G -E -U -g {gain} -i {ident} -j 0.0.0.0:5555 -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=" ".join(self.frequencies))

  def system_version(self):
    cmd = 'vdlm2dec -h 2>&1 | head -2 | tail -1 | cut -d " " -f 2'
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf-8')
    return result.strip() if (result != None) else None

class Dumpvdl2ClientInput(ClientInput):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.receiver = self.raw_input_config['receiver']
    self.gain = self.raw_input_config['gain']
    self.frequencies = self.raw_input_config['frequencies']

  def params(self):
    return '--rtlsdr {receiver} --gain {gain} {frequencies} --output decoded:json:file:path=-'.format(receiver=self.receiver, gain=self.gain, frequencies=" ".join(self.frequencies))

  def system_version(self):
    cmd = 'dumpvdl2 --version 2>&1 | cut -d " " -f 2'
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf-8')
    return result.strip() if (result != None) else None

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

def append_to_logfile(path, line):
  with open(path, 'a') as f:
    f.write('{}\n'.format(line))

def broadcast_message(input, outputs, message):
  for o in outputs:
    if o.format == 'af.json.v1':
      if o.output_type == 'net:udp':
        send_udp_string(o.hostname, o.port, json.dumps(message))
      if o.output_type == 'logfile':
        append_to_logfile(o.path, json.dumps(message))
    if o.format == 'af.protobuf.v1':
      if o.output_type == 'net:grpc':
        o.send_message(message, input)

def load_config(full_path):
  with open(full_path) as f:
    config = json.load(f)
  return config

def send_message_to_outputs(input, message):
  if input.outputs:
    broadcast_message(input, input.outputs, message)
  else:
    print('Not broadcasting due to lack of output config for decoder {}: {}'.format(input.name, json.dumps(message)))

def send_udp(dest_ip, dest_port, message_bytes):
  sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
  sock.sendto(message_bytes, (dest_ip, dest_port))
  print("Sent {} bytes by UDP to {}:{}: {}".format(len(message_bytes), dest_ip, dest_port, message_bytes.decode()))

def send_udp_string(dest_ip, dest_port, message):
  message_encoded = message.encode()
  send_udp(dest_ip, dest_port, message_encoded)

def start_client_input(queue, client_input):
  """Start and handle a ClientInput"""
  log_file = '/var/log/airframes/{}.log'.format(client_input.name)
  logging.basicConfig(format='%(asctime)s: %(message)s', level=logging.INFO, handlers=[logging.FileHandler(log_file)], datefmt='%Y-%m-%d %H:%M:%S')
  logpipe = LogPipe(logging.INFO)

  logging.info('Started {}.'.format(client_input.name))
  with subprocess.Popen(shlex.split(client_input.full_command()),
    stdout=subprocess.PIPE, stderr=logpipe, universal_newlines=True) as process:
    try:
      while True:
        stdout = process.stdout.readline().strip()
        frame = {
          'source': {
            'app': {
              'name': client_input.name,
              'version': client_input.system_version()
            }
          },
          'payload': stdout
        }
        message = json.loads(stdout)
        queue.put((client_input.name, message))

        return_code = process.poll()
        if return_code is not None:
          print('[{}] Exited: {}'.format(client_input.name, return_code))
          for output in process.stdout.readlines():
            print('[{}] {}'.format(client_input.name, output.strip()))
          break
    except KeyboardInterrupt:
      pass
    except:
      print('Unexpected Exception: {}. Forcefully shutting down child exec process for {}'.format(sys.exc_info()[0], client_input.name))
      logpipe.close()
      process.kill()
    else:
      print('Sanely shutting down {}', client_input.name)
      logpipe.close()

if __name__ == '__main__':
  config = load_config('/boot/airframes.json')
  print('Config')
  print(json.dumps(config))
  print()

  inputs = []
  input_classes = {
    'acarsdec': AcarsdecClientInput,
    'dumpvdl2': Dumpvdl2ClientInput,
    'vdlm2dec': Vdlm2decClientInput
  }
  for decoder in config['decoders']:
    print("Setting up decoder {}".format(decoder['name']))
    inp_str = decoder['input']['name']
    inp = input_classes[inp_str](decoder)
    print(inp)
    inputs.append(inp)

  print('Inputs')
  for client_input in inputs:
    print("  - {}:{} (version: {}, receiver: {}, command: {}, params: {})".format(client_input.input_type, client_input.name, client_input.system_version(), client_input.receiver, client_input.command_path(), client_input.params()))
  print()

  print('Outputs')
  for i in inputs:
    print('  - {}:{}'.format(i.input_type, i.name))
    for o in i.outputs:
      print("    - {} (format: {})".format(o.output_name(), o.format))
  print()

  processes = []
  try:
    queue = multiprocessing.Queue()
    for client_input in inputs:
      p = multiprocessing.Process(target=start_client_input, args=(queue, client_input,))
      p.name = client_input.name
      processes.append(p)
      p.start()
    while True:
      from_client_name, message = queue.get()
      input = next(i for i in inputs if i.name == from_client_name)
      send_message_to_outputs(input, message)
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
