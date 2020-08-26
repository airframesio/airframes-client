# airframes-client

## Dependencies

Optionally install packages for support.

acarsdec
vdlm2dec
dumpvdl2
acarsdeco2
jaero

## Interface

### Init
/etc/init.d/airframes-client start
/etc/init.d/airframes-client stop
/etc/init.d/airframes-client restart

### Binaries/scripts
/usr/local/bin/afc
/usr/local/bin/airframes-config

### Config
/boot/airframes.json

```
{
  "system": {
    "networking": {
      "hostname": "adsb1",
      "dhcp": true,
      "wifi": {
        "ssid": "YOUR SSID",
        "passphrase": "YOUR PASSPHRASE"
      },
    },
    "location": {
      "altitude": 100,
      "latitude": "0.0",
      "longitude": "0.0"
    }
    "devices": [

    ]
  },
  "decoders": [
    {
      "input": {
        "type": "client",
        "client": {
          "type": "acarsdec",
          "path": "/usr/local/bin/acarsdec",
          "config": {
            "verbose": true,
            "gain": 40,
            "ident": "KE-KMHR1",
            "frequencies": ["131.550", "131.525", "131.725", "130.025", "130.450", "131.125"]
          }
        }
      },
      "outputs": [
        {
          "type": "udp",
          "format": "af.json.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6000
        },
        {
          "type": "udp",
          "format": "af.protobuf.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6001
        }
      ]
    },
    {
      "input": {
        "type": "client",
        "client": {
          "type": "dumpvdl2",
          "path": "/usr/local/bin/dumpvdl2",
          "config": {
            "verbose": false,
            "gain": 40,
            "frequencies": ["136.650", "136.800", "136.975"]
          }
        }
      },
      "outputs": [
        {
          "type": "udp",
          "format": "af.json.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6000
        },
        {
          "type": "udp",
          "format": "af.protobuf.v1",
          "feed": { "id": "8362191b-7193-4c12-87cd-024716d107ed" },
          "hostname": "feed.acars.io",
          "port": 6001
        }
      ]
    }
  ]
}
```


### Setup
/usr/local/bin/airframes-config                    # Loads ncurses menu to configure airframes client
/usr/local/bin/airframes-config set <var> <value>  # Set a specific config variable to a value
/usr/local/bin/airframes-config get <var>          # Look at current value for a config variable
/usr/local/bin/airframes-config login              # Prompt to login (and store a token)

```
/usr/local/bin/airframes-config set decoder.acarsdec.enabled true
/usr/local/bin/airframes-config set decoder.dumpvdl2.enabled true
/usr/local/bin/airframes-config set output.host feed.acars.io
/usr/local/bin/airframes-config set output.port 6000
/usr/local/bin/airframes-config set output.protocol json          # Later: protobuf
```

### Processes

```
123 /usr/local/bin/afc --config=/boot/airframes.json
124 /usr/local/bin/acarsdec -v -o 4 -g 40 -i KE-KMHR1 -o 4 -r 0 131.550 131.525 131.725 130.025 130.450 131.125
125 /usr/local/bin/dumpvdl2 --rtlsdr 0 --gain 40 136650000 136800000 136975000 --output decoded:json:path=-
```

### Destination Output

JSON:

```
{
  "source": {
    "app": {
      "name": "acarsdec",
      "version": "2.0.1",
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
    { "timestamp": 1597519975.7317891, "station_id": "KE-KMHR1", "channel": 2, "freq": 131.725, "level": -31, "error": 0, "mode": "2", "label": "SQ", "text": "00XS" }
  }
}
```
