#!/bin/sh

SOURCE_PATH=~/source

echo "[Airframes] Installing system dependencies"
apt update
apt install -y build-essential cmake git libglib2.0-dev pkg-config librtlsdr-dev libsqlite3-dev libprotobuf-c-dev libzmq3-dev

mkdir -p ${SOURCE_PATH}
cd ${SOURCE_PATH}

echo "[Airframes] Pulling down sources"
git clone https://github.com/TLeconte/acarsdec.git
git clone https://github.com/szpajder/libacars
git clone https://github.com/romanbsd/statsd-c-client.git
git clone https://github.com/airframesio/dumpvdl2.git

echo "[Airframes] Building libacars"
cd ${SOURCE_PATH}/libacars
mkdir build
cd build
cmake ../
make && make install && ldconfig

echo "[Airframes] Building acarsdec"
cd ${SOURCE_PATH}/acarsdec
mkdir build
cd build
cmake .. -Drtl=ON
make && make install

echo "[Airframes] Building statsd-c-client"
cd ${SOURCE_PATH}/statsd-c-client
make && make install && ldconfig

echo "[Airframes] Building dumpvdl2"
cd ${SOURCE_PATH}/dumpvdl2
mkdir build
cd build
cmake ../
make && make install