# Airframes Decoder Client

The Airframes Decoder Client is an application that wraps and supervises ACARS/VDL/HFDL/AERO decoder clients
(such as `acarsdec` and `vdlm2dec`) and then sends a sanitized, highly performant stream of the outputs to the Airframes
aggregation server.

Fundamentally, using the Airframes Decoder Client means that you will no longer need to run the decoder clients
manually or using system services, and they are centrally configured using a `/boot/airframes.json` file.

You can configure an unlimited number of decoder inputs and outputs (as many as your system can handle simultaneously).
Particularly useful is the ability to send output to multiple destinations, such as to `feed.airframes.io` (the
Airframes aggregation service), your own aggregator or project, and as many log files as you wish to use.

## Dependencies

Optionally install packages for support.

* acarsdec
* vdlm2dec
* dumpvdl2
* acarsdeco2
* jaero

## Interface

The following is only available after the system package is installed.

### Init
* `/etc/init.d/airframes-client start`
* `/etc/init.d/airframes-client stop`
* `/etc/init.d/airframes-client restart`


### Binaries/scripts
* `/usr/local/airframes/adc/adc` - Airframes Decoder Client
* `/usr/local/bin/airframes-config` - Airframes Client Config Tool

### Config
`/boot/airframes.json`

The meat of the configuration for ADC is in this file. It may seem overwhelming at first since you must
currently define and edit this file by hand. In the near future this file will be managed more easily
by using the Airframes Client Config Tool (`airframes-config`) from the command-line.
```
{
  "system": {
    "networking": {
      "hostname": "airband1",
      "dhcp": true,
      "wifi": {
        "ssid": "YOUR SSID",
        "passphrase": "YOUR PASSPHRASE"
      }
    },
    "location": {
      "altitude": 100,
      "latitude": "0.0",
      "longitude": "0.0"
    },
    "devices": [

    ]
  },
  "decoders": [
    {
      "name": "acarsdec",
      "input": {
        "type": "decoder",
        "name": "acarsdec",
        "path": "/usr/local/bin/acarsdec",
        "config": {
          "receiver": "0",
          "verbose": true,
          "gain": 400,
          "ident": "KE-KMHR1",
          "frequencies": ["131.550", "131.525", "131.725", "130.025", "130.450", "131.125"]
        }
      },
      "outputs": [
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/airframes.data.json"
        },
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/acarsdec.data.json"
        },
        {
          "type": "net:udp",
          "format": "af.json.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6000
        },
        {
          "type": "net:grpc",
          "format": "af.protobuf.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "192.168.8.31",
          "port": 6001
        }
      ]
    },
    {
      "name": "vdlm2dec",
      "input": {
        "type": "decoder",
        "name": "vdlm2dec",
        "path": "/usr/local/bin/vdlm2dec",
        "config": {
          "receiver": "1",
          "gain": 400,
          "ident": "KE-KMHR2",
          "frequencies": ["136.650", "136.800", "136.975"]
        }
      },
      "outputs": [
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/airframes.data.json"
        },
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/vdlm2dec.data.json"
        },
        {
          "type": "net:udp",
          "format": "af.json.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6000
        },
        {
          "type": "net:grpc",
          "format": "af.protobuf.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "192.168.8.31",
          "port": 6001
        }
      ]
    },
    {
      "name": "dumpvdl2",
      "input": {
        "type": "decoder",
        "name": "dumpvdl2",
        "path": "/usr/local/bin/dumpvdl2",
        "config": {
          "receiver": "2",
          "gain": 40,
          "frequencies": ["136650000", "136800000", "136975000"]
        }
      },
      "outputs": [
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/airframes.data.json"
        },
        {
          "type": "logfile",
          "format": "af.json.v1",
          "path": "/var/log/airframes/dumpvdl2.data.json"
        },
        {
          "type": "net:udp",
          "format": "af.json.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6000
        },
        {
          "type": "net:grpc",
          "format": "af.protobuf.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "192.168.8.31",
          "port": 6001
        }
      ]
    }
  ]
}
```


### Setup
```
/usr/local/bin/airframes-config                    # Loads ncurses menu to configure airframes client
/usr/local/bin/airframes-config set <var> <value>  # Set a specific config variable to a value
/usr/local/bin/airframes-config get <var>          # Look at current value for a config variable
/usr/local/bin/airframes-config login              # Prompt to login (and store a token)
```

```
/usr/local/bin/airframes-config set decoder.acarsdec.enabled true
/usr/local/bin/airframes-config set decoder.dumpvdl2.enabled true
/usr/local/bin/airframes-config set output.host feed.acars.io
/usr/local/bin/airframes-config set output.port 6000
/usr/local/bin/airframes-config set output.protocol json          # Later: protobuf
```

### Processes

The primary Airframes Decoder Client process `adc` spawns a supervisor process for each decoder input you configure and run.
It will appear as if `adc` is running multiple times, but if you enable heiarchy when you look at the process
list you will see that they are child processes.

`ps ax -H`
```
31833 pts/1    Sl+    0:00       python3 /usr/local/airframes/adc/adc
31868 pts/1    Sl+    0:00         python3 /usr/local/airframes/adc/adc
31890 pts/1    Rl+    0:08           /usr/local/bin/acarsdec -v -o 4 -g 400 -i KE-KMHR1 -r 0 131.550 131.525 131.725 130.025 130.450 131.125
31875 pts/1    Sl+    0:00         python3 /usr/local/airframes/adc/adc
31900 pts/1    Sl+    0:02           /usr/local/bin/vdlm2dec -v -J -G -E -U -g 400 -i KE-KMHR2 -r 1 136.650 136.800 136.975
31883 pts/1    Sl+    0:00         python3 /usr/local/airframes/adc/adc
31908 pts/1    Sl+    0:05           /usr/local/bin/dumpvdl2 --rtlsdr 2 --gain 40 136650000 136800000 136975000 --output decoded:json:file:path=-
```

### Destination Output

#### gRPC + protobuf

In order to keep the data streams light and performant, we have chosen to primarily focus on using
binary protobuf streams over gRPC in order to send message data to net-based outputs (such as the
Airframes aggregator).

You can review the [protobuf definitions](https://github.com/airframesio/airframes-client/blob/master/protobuf/airframes_client_frame.proto) to
better understand the structure of what is sent.

#### JSON

This is a proposed JSON output format (for net-based outputs only). It has not yet been enabled.
```
{
  "source": {
    "app": {
      "name": "acarsdec",
      "version": "2.0.1"
    },
    "host": {
      "platform": "x86",
      "os": "Linux",
      "version": "Debian 10"
    },
    "type": "acars",
    "format": "pp"
  },
  "airframes": {
    "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" }
  },
  "payload": {
    "timestamp": 1597519975.7317891, "station_id": "KE-KMHR1", "channel": 2, "freq": 131.725, "level": -31, "error": 0, "mode": "2", "label": "SQ", "text": "00XS"
  }
}
```
