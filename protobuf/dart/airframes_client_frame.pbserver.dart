///
//  Generated code. Do not modify.
//  source: airframes_client_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'airframes_client_frame.pb.dart' as $0;
import 'airframes_client_frame.pbjson.dart';

export 'airframes_client_frame.pb.dart';

abstract class AirframesServiceBase extends $pb.GeneratedService {
  $async.Future<$0.AirframesClientFrame> sendExampleFrame($pb.ServerContext ctx, $0.TestRequest request);
  $async.Future<$0.AirframesClientFrame> sendFrame($pb.ServerContext ctx, $0.AirframesClientFrame request);
  $async.Future<$0.AirframesClientFrame> getFrame($pb.ServerContext ctx, $0.FrameRequest request);
  $async.Future<$0.AirframesClientFrame> getFrames($pb.ServerContext ctx, $0.FrameRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SendExampleFrame': return $0.TestRequest();
      case 'SendFrame': return $0.AirframesClientFrame();
      case 'GetFrame': return $0.FrameRequest();
      case 'GetFrames': return $0.FrameRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SendExampleFrame': return this.sendExampleFrame(ctx, request);
      case 'SendFrame': return this.sendFrame(ctx, request);
      case 'GetFrame': return this.getFrame(ctx, request);
      case 'GetFrames': return this.getFrames(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AirframesServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AirframesServiceBase$messageJson;
}

