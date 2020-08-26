#!/bin/sh

protoc --include_imports --descriptor_set_out=airframes_client_output_frame.desc airframes_client_output_frame.proto
