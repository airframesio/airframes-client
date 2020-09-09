#!/bin/sh

python3 -m grpc_tools.protoc -I../protobuf --python_out=. --grpc_python_out=. ../protobuf/airframes_client_frame.proto
