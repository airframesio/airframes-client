#!/bin/sh

ORIGINAL_PATH=`pwd`
SOURCE_PATH=~/source
mkdir -p ${SOURCE_PATH}

echo "[Airframes] Installing system dependencies"
apt update
apt install -y build-essential cmake git libglib2.0-dev pkg-config librtlsdr-dev libsqlite3-dev libprotobuf-c-dev libzmq3-dev
echo

echo "[Airframes] Pulling down sources"
cd ${SOURCE_PATH}
git clone https://github.com/airframesio/airframes-client.git
git clone https://github.com/TLeconte/acarsdec.git
git clone https://github.com/szpajder/libacars.git
git clone https://github.com/romanbsd/statsd-c-client.git
git clone https://github.com/airframesio/dumpvdl2.git
git clone https://github.com/TLeconte/vdlm2dec.git
echo

echo "[Airframes] Building libacars"
cd ${SOURCE_PATH}/libacars
mkdir build
cd build
cmake ../
make && make install && ldconfig
echo

echo "[Airframes] Building acarsdec"
cd ${SOURCE_PATH}/acarsdec
mkdir build
cd build
cmake .. -Drtl=ON
make && make install
echo

echo "[Airframes] Building statsd-c-client"
cd ${SOURCE_PATH}/statsd-c-client
make && make install && ldconfig
echo

echo "[Airframes] Building dumpvdl2"
cd ${SOURCE_PATH}/dumpvdl2
mkdir build
cd build
cmake ../
make && make install
echo

echo "[Airframes] Building vdlm2dec"
cd ${SOURCE_PATH}/vdlm2dec
mkdir build
cd build
cmake .. -Drtl=ON
make && make install
echo

echo "[Airframes] Installing airframes-client"
cd ${SOURCE_PATH}/airframes-client
if [ ! -f "/boot/airframes.json" ]; then
  cp json/airframes.json /boot/airframes.json
fi
cp debian/adc.service /etc/systemd/system
systemctl enable adc
apt install -y python3 python3-pip python3-venv
mkdir -p /usr/local/airframes
cp -rf scripts/adc /usr/local/airframes
cd /usr/local/airframes/adc
python3 -m venv airframes
source airframes/bin/activate
pip3 install -r requirements.txt
echo

echo "[Airframes] Done!"
echo
cd $ORIGINAL_PATH

echo "[Airframes] Next steps:"
echo
echo "            1. Customize /boot/airframes.json"
echo "            2. Restart the service: systemctl restart adc"
echo
