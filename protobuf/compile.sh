#!/bin/sh

protoc --include_imports --descriptor_set_out=airframes_client_output_frame.desc airframes_client_output_frame.proto
protoc --dart_out=dart airframes_client_output_frame.proto
protoc --js_out=js airframes_client_output_frame.proto
protoc --ruby_out=ruby airframes_client_output_frame.proto
