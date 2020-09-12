#!/usr/bin/env python3

"""The Python 3 implementation of the Airframes Decoder Client. Visit https://github.com/airframesio/airframes-client for more information."""

import multiprocessing
import subprocess
import shlex
from non_blocking_stream_reader import NonBlockingStreamReader
import queue

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

VERSION='1.0.0'

### Outputs

class Output:
  def __init__(self, raw_config_data):
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

  def create_app(self, decoder_input):
    host_type = airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.UNKNOWN_APP_TYPE;
    apps = {
      'acarsdec': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.ACARSDEC,
      'dumpvdl2': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.DUMPVDL2,
      'vdlm2dec': airframes_client_frame_pb2.AirframesClientFrame.Source.App.AppType.VDLM2DEC
    }
    if list(filter(decoder_input.name.startswith, apps.keys())) != []:
      for prefix in apps.keys():
        if decoder_input.name.startswith(prefix):
          host_type = apps[prefix]

    return airframes_client_frame_pb2.AirframesClientFrame.Source.App(
      type=host_type,
      version=decoder_input.system_version()
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

  def create_airframes_message_frame(self, decoder_input, message):
    app = self.create_app(decoder_input)
    source = airframes_client_frame_pb2.AirframesClientFrame.Source(
      app=app,
      host=self.create_host()
    )

    if decoder_input.name == 'acarsdec':
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
    elif decoder_input.name == 'vdlm2dec':
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
      print("Not a known decoder type, so not going to send a protobuf frame.")
      pass

  def send_message(self, message, decoder_input):
    grpc_frame = self.create_airframes_message_frame(decoder_input, message)
    results = { 'bytes_sent': 0, 'message_size_bytes': 0 }
    try:
      self.stub.SendFrame(grpc_frame)
      # print("Sent {} bytes by gRPC to {}:{}: {} - ({} bytes) - {}".format(grpc_frame.ByteSize(), self.hostname, self.port, client_input.name, grpc_frame.acarsdec_message.ByteSize(), grpc_frame))
      message_size_bytes = grpc_frame.acarsdec_message.ByteSize() + grpc_frame.vdlm2dec_message.ByteSize() # Only one can exist anyway
      print("Sent {} bytes by gRPC to {}:{} ({}, message: {} bytes)".format(grpc_frame.ByteSize(), self.hostname, self.port, decoder_input.name, message_size_bytes))
      results = { 'bytes_sent': grpc_frame.ByteSize(), 'message_size_bytes': message_size_bytes }
    except grpc.RpcError as rpc_error_call:
      print('Error sending by gRPC to {}:{} ({}, message: {})'.format(self.hostname, self.port, rpc_error_call.code(), rpc_error_call.details()))
    return results

class LogfileOutput(Output):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.path = raw_config_data['path']

  def output_name(self):
    return '{}:{}'.format(self.output_type, self.path)


### Inputs

class DecoderInput:
  def __init__(self, raw_config_data):
    self.raw_config_data = raw_config_data
    self.input_type = raw_config_data['input']['type']
    self.name = raw_config_data['input']['name']
    self.path = raw_config_data['input']['path']
    self.raw_input_config = raw_config_data['input']['config']
    self.pid = None
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

class AcarsdecDecoderInput(DecoderInput):
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

class Vdlm2decDecoderInput(DecoderInput):
  def __init__(self, raw_config_data):
    super().__init__(raw_config_data)
    self.receiver = self.raw_input_config['receiver']
    self.gain = self.raw_input_config['gain']
    self.ident = self.raw_input_config['ident']
    self.frequencies = self.raw_input_config['frequencies']

  def params(self):
    return '-v -J -G -E -U -g {gain} -i {ident} -r {receiver} {frequencies}'.format(ident=self.ident, receiver=self.receiver, gain=self.gain, frequencies=" ".join(self.frequencies))

  def system_version(self):
    cmd = 'vdlm2dec -h 2>&1 | head -2 | tail -1 | cut -d " " -f 2'
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf-8')
    return result.strip() if (result != None) else None

class Dumpvdl2DecoderInput(DecoderInput):
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


### Support

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

class Log:
  @staticmethod
  def append_to_logfile(path, line):
    with open(path, 'a') as f:
      f.write('{}\n'.format(line))

class Communication:
  @staticmethod
  def broadcast_message(input, message):
    if input.outputs:
      return Communication.broadcast_message_to_outputs(input, input.outputs, message)
    else:
      print('Not broadcasting due to lack of output config for decoder {}: {}'.format(input.name, json.dumps(message)))
      return { 'total_bytes_sent': 0, 'total_message_size_bytes': 0 }

  @staticmethod
  def broadcast_message_to_outputs(input, outputs, message):
    total_bytes_sent = 0
    total_message_size_bytes = 0
    for o in outputs:
      if o.format == 'af.json.v1':
        if o.output_type == 'net:udp':
          results = Communication.send_udp_string(o.hostname, o.port, json.dumps(message))
          print("Sent {} bytes by UDP to {}:{} ({}, message: {} bytes)".format(results['bytes_sent'], o.hostname, o.port, input.name, results['message_size_bytes']))
          total_bytes_sent += results['bytes_sent']
          total_message_size_bytes += results['message_size_bytes']
        if o.output_type == 'logfile':
          Log.append_to_logfile(o.path, json.dumps(message))
      if o.format == 'af.protobuf.v1':
        if o.output_type == 'net:grpc':
          results = o.send_message(message, input)
          total_bytes_sent += results['bytes_sent']
          total_message_size_bytes += results['message_size_bytes']
    return { 'total_bytes_sent': total_bytes_sent, 'total_message_size_bytes': total_message_size_bytes }

  @staticmethod
  def send_udp(dest_ip, dest_port, message_bytes):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(message_bytes, (dest_ip, dest_port))
    # print("Sent {} bytes by UDP to {}:{}".format(len(message_bytes), dest_ip, dest_port, message_bytes.decode()))
    return { 'bytes_sent': len(message_bytes), 'message_size_bytes': len(message_bytes) }

  @staticmethod
  def send_udp_string(dest_ip, dest_port, message):
    message_encoded = message.encode()
    return Communication.send_udp(dest_ip, dest_port, message_encoded)

class Pid:
  @staticmethod
  def get_pid(path):
    try:
      with open(path) as f:
        pid = f.readline().rstrip('\n')
        if pid != None and pid != '':
          return pid
        f.close()
    except:
      return None
    return None

  @staticmethod
  def remove_pid(path):
    try:
      os.remove(path)
    except:
      return True
    return True

  @staticmethod
  def store_pid(path, pid):
    try:
      with open(path, 'w') as f:
        f.write(str(pid))
        f.close()
    except IOError as error:
      print('Unable to create pid file {}. {}'.format(path, error))
      return False
    return True

class Config:
  def __init__(self, config_path):
    if os.path.exists(config_path):
      self.config = self.load_config(config_path)
    else:
      print('Config does not exist at {}'.format(config_path))
      exit(1)

  def load_config(self, path):
    print('Loading config from {}'.format(path))
    with open(path) as f:
      config = json.load(f)
    # print(json.dumps(config))
    # print()
    return config

class Main:
  @staticmethod
  def mkdir(path):
    try:
      os.mkdir(path, 0o755)
    except FileExistsError as error:
      return True
    except OSError as error:
      print('Unable to make directory {}. {}'.format(path, error))
      return False
    return True

  @staticmethod
  def prepare_system():
    if Main.mkdir('/var/run/airframes') == False:
      return False

  @staticmethod
  def setup_inputs(config):
    inputs = []
    input_classes = {
      'acarsdec': AcarsdecDecoderInput,
      'dumpvdl2': Dumpvdl2DecoderInput,
      'vdlm2dec': Vdlm2decDecoderInput
    }
    for decoder in config['decoders']:
      inp_str = decoder['input']['name']
      inp = input_classes[inp_str](decoder)
      inputs.append(inp)
    print()

    print('Inputs')
    for decoder_input in inputs:
      print("  - {}:{} (version: {}, receiver: {}, command: {}, params: {})".format(decoder_input.input_type, decoder_input.name, decoder_input.system_version(), decoder_input.receiver, decoder_input.command_path(), decoder_input.params()))
    print()
    print('Outputs')
    for i in inputs:
      print('  - {}:{}'.format(i.input_type, i.name))
      for o in i.outputs:
        print("    - {} (format: {})".format(o.output_name(), o.format))
    print()
    return inputs

  @staticmethod
  def run():
    print('Airframes Decoder Client (adc) - {}'.format(VERSION))
    print('https://github.com/airframesio/airframes-client')
    print('https://app.airframes.io/about')
    print('Copyright @ 2020, Kevin Elliott <kevin@airframes.io>')
    print()

    if Main.prepare_system() == False:
      sys.exit(1)

    config = Config('/boot/airframes.json')
    inputs = Main.setup_inputs(config.config)
    processes = []
    stats = {
      'total_bytes_sent': 0,
      'total_message_size_bytes': 0
    }
    try:
      q = multiprocessing.Queue()
      for decoder_input in inputs:
        p = multiprocessing.Process(target=start_decoder_input, args=(q, decoder_input,))
        p.name = decoder_input.name
        processes.append(p)
        p.start()
        print("Started {} decoder supervisor (PID {})".format(decoder_input.name, p.pid))

      while True:
        try:
          from_decoder_name, message = q.get(timeout=1)
          if message != None and len(message) > 0:
            input = next(i for i in inputs if i.name == from_decoder_name)
            results = Communication.broadcast_message(input, message)
            stats['total_bytes_sent'] += results['total_bytes_sent']
            stats['total_message_size_bytes'] += results['total_message_size_bytes']
        except queue.Empty:
          pass

        for p in processes:
          if p.is_alive() == False:
            decoder_input = next(i for i in inputs if i.name == p.name)
            print("Supervisor for {} (PID {}) is no longer alive".format(decoder_input.name, p.pid))
            p.close()
            processes.remove(p)
            if True:
              p = multiprocessing.Process(target=start_decoder_input, args=(q, decoder_input,))
              p.name = decoder_input.name
              processes.append(p)
              p.start()
              print("Restarted {} decoder supervisor (PID {})".format(decoder_input.name, p.pid))

    except KeyboardInterrupt:
      print('Keyboard interrupt, shutting down processes...')
      sys.stdout.flush()
      for p in processes:
        print('Shutting down {} decoder supervisor (PID {})'.format(p.name, p.pid))
        sys.stdout.flush()
        p.terminate()
        p.join()
        p.kill()
      print()
      print('SUMMARY')
      print('Total message size (bytes): {}'.format(stats['total_message_size_bytes']))
      print('Total sent (bytes): {}'.format(stats['total_bytes_sent']))

def start_decoder_input(queue, decoder_input):
  """Start and handle a DecoderInput"""
  log_file = '/var/log/airframes/{}.run.log'.format(decoder_input.name)
  logging.basicConfig(format='%(asctime)s: %(message)s', level=logging.INFO, handlers=[logging.FileHandler(log_file)], datefmt='%Y-%m-%d %H:%M:%S')
  logpipe = LogPipe(logging.INFO)

  logging.info('Started {}.'.format(decoder_input.name))
  with subprocess.Popen(shlex.split(decoder_input.full_command()),
    stdout=subprocess.PIPE, stderr=logpipe, universal_newlines=True) as process:
    stream_reader = NonBlockingStreamReader(process.stdout);

    pid_file = '/var/run/airframes/{}.pid'.format(decoder_input.name)
    if Pid.store_pid(pid_file, process.pid) == False:
      print('Unable to create {}, shut down input {}.'.format(pid_file, decoder_input.name))
      logpipe.close()
      process.stdout.close()
      process.kill()
      Pid.remove_pid(pid_file)
      return False

    stdout = None
    try:
      print('Listening for data from decoder {}'.format(decoder_input.name))
      while True:
        stdout = stream_reader.readline(1)
        if stdout:
          stdout = stdout.strip()
          message = json.loads(stdout)
          queue.put((decoder_input.name, message))

        return_code = process.poll()
        if return_code is not None:
          print('Looks like the {} subprocess (PID {}) exited (code {}), will notify supervisor'.format(decoder_input.name, process.pid, return_code))
          break
    except KeyboardInterrupt:
      pass
    except json.decoder.JSONDecodeError as error:
      print('Unable to JSON decode output from {}: {}'.format(decoder_input.name, error))
      logpipe.close()
      process.stdout.close()
      process.kill()
      sys.exit(1)
    except:
      print('Unexpected Exception: {}. Forcefully shutting down child exec process for {}'.format(sys.exc_info()[0], decoder_input.name))
      logpipe.close()
      process.stdout.close()
      process.kill()
      sys.exit(1)
    else:
      pass
  logpipe.close()
  process.stdout.close()
  process.terminate()
  sys.exit(0)

if __name__ == '__main__':
  Main.run()
