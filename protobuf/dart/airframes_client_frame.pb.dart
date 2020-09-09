///
//  Generated code. Do not modify.
//  source: airframes_client_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'airframes_client_frame.pbenum.dart';

export 'airframes_client_frame.pbenum.dart';

class AcarsdecMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AcarsdecMessage', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..a<$core.double>(1, 'timestamp', $pb.PbFieldType.OD)
    ..aOS(2, 'stationId')
    ..a<$core.int>(3, 'channel', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, 'frequency', $pb.PbFieldType.OD)
    ..a<$core.int>(5, 'level', $pb.PbFieldType.OS3)
    ..a<$core.int>(6, 'error', $pb.PbFieldType.OU3)
    ..aOS(7, 'mode')
    ..aOS(8, 'label')
    ..aOS(9, 'blockId')
    ..aOS(10, 'ack')
    ..aOS(11, 'tail')
    ..aOS(12, 'flight')
    ..aOS(13, 'messageNumber')
    ..aOS(14, 'text')
    ..aOB(15, 'end')
    ..hasRequiredFields = false
  ;

  AcarsdecMessage._() : super();
  factory AcarsdecMessage() => create();
  factory AcarsdecMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcarsdecMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AcarsdecMessage clone() => AcarsdecMessage()..mergeFromMessage(this);
  AcarsdecMessage copyWith(void Function(AcarsdecMessage) updates) => super.copyWith((message) => updates(message as AcarsdecMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AcarsdecMessage create() => AcarsdecMessage._();
  AcarsdecMessage createEmptyInstance() => create();
  static $pb.PbList<AcarsdecMessage> createRepeated() => $pb.PbList<AcarsdecMessage>();
  @$core.pragma('dart2js:noInline')
  static AcarsdecMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcarsdecMessage>(create);
  static AcarsdecMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set stationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStationId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get frequency => $_getN(3);
  @$pb.TagNumber(4)
  set frequency($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequency() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequency() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get level => $_getIZ(4);
  @$pb.TagNumber(5)
  set level($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get error => $_getIZ(5);
  @$pb.TagNumber(6)
  set error($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mode => $_getSZ(6);
  @$pb.TagNumber(7)
  set mode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearMode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get label => $_getSZ(7);
  @$pb.TagNumber(8)
  set label($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLabel() => $_has(7);
  @$pb.TagNumber(8)
  void clearLabel() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get blockId => $_getSZ(8);
  @$pb.TagNumber(9)
  set blockId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlockId() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get ack => $_getSZ(9);
  @$pb.TagNumber(10)
  set ack($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAck() => $_has(9);
  @$pb.TagNumber(10)
  void clearAck() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get tail => $_getSZ(10);
  @$pb.TagNumber(11)
  set tail($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTail() => $_has(10);
  @$pb.TagNumber(11)
  void clearTail() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get flight => $_getSZ(11);
  @$pb.TagNumber(12)
  set flight($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFlight() => $_has(11);
  @$pb.TagNumber(12)
  void clearFlight() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get messageNumber => $_getSZ(12);
  @$pb.TagNumber(13)
  set messageNumber($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMessageNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearMessageNumber() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get text => $_getSZ(13);
  @$pb.TagNumber(14)
  set text($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasText() => $_has(13);
  @$pb.TagNumber(14)
  void clearText() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get end => $_getBF(14);
  @$pb.TagNumber(15)
  set end($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasEnd() => $_has(14);
  @$pb.TagNumber(15)
  void clearEnd() => clearField(15);
}

class Vdlm2decMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Vdlm2decMessage', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..a<$core.double>(1, 'timestamp', $pb.PbFieldType.OD)
    ..aOS(2, 'stationId')
    ..a<$core.int>(3, 'channel', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, 'frequency', $pb.PbFieldType.OD)
    ..a<$core.int>(5, 'fromIcao', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'toIcao', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'level', $pb.PbFieldType.OS3)
    ..a<$core.int>(8, 'error', $pb.PbFieldType.OU3)
    ..aOS(9, 'mode')
    ..aOS(10, 'label')
    ..aOS(11, 'blockId')
    ..aOS(12, 'ack')
    ..aOS(13, 'tail')
    ..aOS(14, 'flight')
    ..aOS(15, 'messageNumber')
    ..aOS(16, 'text')
    ..aOB(17, 'end')
    ..aOS(18, 'departureAirport')
    ..aOS(19, 'destinationAirport')
    ..aOS(20, 'arrivalEta')
    ..aOS(21, 'gateOut')
    ..aOS(22, 'groundOff')
    ..aOS(23, 'groundOn')
    ..aOS(24, 'gateIn')
    ..hasRequiredFields = false
  ;

  Vdlm2decMessage._() : super();
  factory Vdlm2decMessage() => create();
  factory Vdlm2decMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vdlm2decMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Vdlm2decMessage clone() => Vdlm2decMessage()..mergeFromMessage(this);
  Vdlm2decMessage copyWith(void Function(Vdlm2decMessage) updates) => super.copyWith((message) => updates(message as Vdlm2decMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Vdlm2decMessage create() => Vdlm2decMessage._();
  Vdlm2decMessage createEmptyInstance() => create();
  static $pb.PbList<Vdlm2decMessage> createRepeated() => $pb.PbList<Vdlm2decMessage>();
  @$core.pragma('dart2js:noInline')
  static Vdlm2decMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vdlm2decMessage>(create);
  static Vdlm2decMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set stationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStationId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get frequency => $_getN(3);
  @$pb.TagNumber(4)
  set frequency($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequency() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequency() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get fromIcao => $_getIZ(4);
  @$pb.TagNumber(5)
  set fromIcao($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFromIcao() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromIcao() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get toIcao => $_getIZ(5);
  @$pb.TagNumber(6)
  set toIcao($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasToIcao() => $_has(5);
  @$pb.TagNumber(6)
  void clearToIcao() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get level => $_getIZ(6);
  @$pb.TagNumber(7)
  set level($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get error => $_getIZ(7);
  @$pb.TagNumber(8)
  set error($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(8)
  void clearError() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get mode => $_getSZ(8);
  @$pb.TagNumber(9)
  set mode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearMode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get label => $_getSZ(9);
  @$pb.TagNumber(10)
  set label($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLabel() => $_has(9);
  @$pb.TagNumber(10)
  void clearLabel() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get blockId => $_getSZ(10);
  @$pb.TagNumber(11)
  set blockId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBlockId() => $_has(10);
  @$pb.TagNumber(11)
  void clearBlockId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get ack => $_getSZ(11);
  @$pb.TagNumber(12)
  set ack($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAck() => $_has(11);
  @$pb.TagNumber(12)
  void clearAck() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get tail => $_getSZ(12);
  @$pb.TagNumber(13)
  set tail($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTail() => $_has(12);
  @$pb.TagNumber(13)
  void clearTail() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get flight => $_getSZ(13);
  @$pb.TagNumber(14)
  set flight($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFlight() => $_has(13);
  @$pb.TagNumber(14)
  void clearFlight() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get messageNumber => $_getSZ(14);
  @$pb.TagNumber(15)
  set messageNumber($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMessageNumber() => $_has(14);
  @$pb.TagNumber(15)
  void clearMessageNumber() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get text => $_getSZ(15);
  @$pb.TagNumber(16)
  set text($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasText() => $_has(15);
  @$pb.TagNumber(16)
  void clearText() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get end => $_getBF(16);
  @$pb.TagNumber(17)
  set end($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasEnd() => $_has(16);
  @$pb.TagNumber(17)
  void clearEnd() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get departureAirport => $_getSZ(17);
  @$pb.TagNumber(18)
  set departureAirport($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasDepartureAirport() => $_has(17);
  @$pb.TagNumber(18)
  void clearDepartureAirport() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get destinationAirport => $_getSZ(18);
  @$pb.TagNumber(19)
  set destinationAirport($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasDestinationAirport() => $_has(18);
  @$pb.TagNumber(19)
  void clearDestinationAirport() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get arrivalEta => $_getSZ(19);
  @$pb.TagNumber(20)
  set arrivalEta($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasArrivalEta() => $_has(19);
  @$pb.TagNumber(20)
  void clearArrivalEta() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get gateOut => $_getSZ(20);
  @$pb.TagNumber(21)
  set gateOut($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasGateOut() => $_has(20);
  @$pb.TagNumber(21)
  void clearGateOut() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get groundOff => $_getSZ(21);
  @$pb.TagNumber(22)
  set groundOff($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasGroundOff() => $_has(21);
  @$pb.TagNumber(22)
  void clearGroundOff() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get groundOn => $_getSZ(22);
  @$pb.TagNumber(23)
  set groundOn($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasGroundOn() => $_has(22);
  @$pb.TagNumber(23)
  void clearGroundOn() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get gateIn => $_getSZ(23);
  @$pb.TagNumber(24)
  set gateIn($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasGateIn() => $_has(23);
  @$pb.TagNumber(24)
  void clearGateIn() => clearField(24);
}

class TestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TestRequest', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TestRequest._() : super();
  factory TestRequest() => create();
  factory TestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TestRequest clone() => TestRequest()..mergeFromMessage(this);
  TestRequest copyWith(void Function(TestRequest) updates) => super.copyWith((message) => updates(message as TestRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestRequest create() => TestRequest._();
  TestRequest createEmptyInstance() => create();
  static $pb.PbList<TestRequest> createRepeated() => $pb.PbList<TestRequest>();
  @$core.pragma('dart2js:noInline')
  static TestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestRequest>(create);
  static TestRequest _defaultInstance;
}

class FrameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FrameRequest', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FrameRequest._() : super();
  factory FrameRequest() => create();
  factory FrameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FrameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FrameRequest clone() => FrameRequest()..mergeFromMessage(this);
  FrameRequest copyWith(void Function(FrameRequest) updates) => super.copyWith((message) => updates(message as FrameRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FrameRequest create() => FrameRequest._();
  FrameRequest createEmptyInstance() => create();
  static $pb.PbList<FrameRequest> createRepeated() => $pb.PbList<FrameRequest>();
  @$core.pragma('dart2js:noInline')
  static FrameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FrameRequest>(create);
  static FrameRequest _defaultInstance;
}

class AirframesClientFrame_Source_App extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame.Source.App', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..e<AirframesClientFrame_Source_App_AppType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientFrame_Source_App_AppType.UNKNOWN_APP_TYPE, valueOf: AirframesClientFrame_Source_App_AppType.valueOf, enumValues: AirframesClientFrame_Source_App_AppType.values)
    ..aOS(2, 'version')
    ..hasRequiredFields = false
  ;

  AirframesClientFrame_Source_App._() : super();
  factory AirframesClientFrame_Source_App() => create();
  factory AirframesClientFrame_Source_App.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame_Source_App.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame_Source_App clone() => AirframesClientFrame_Source_App()..mergeFromMessage(this);
  AirframesClientFrame_Source_App copyWith(void Function(AirframesClientFrame_Source_App) updates) => super.copyWith((message) => updates(message as AirframesClientFrame_Source_App));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source_App create() => AirframesClientFrame_Source_App._();
  AirframesClientFrame_Source_App createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame_Source_App> createRepeated() => $pb.PbList<AirframesClientFrame_Source_App>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source_App getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame_Source_App>(create);
  static AirframesClientFrame_Source_App _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientFrame_Source_App_AppType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AirframesClientFrame_Source_App_AppType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class AirframesClientFrame_Source_Host extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame.Source.Host', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..e<AirframesClientFrame_Source_Host_Platform>(1, 'platform', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientFrame_Source_Host_Platform.UNKNOWN_PLATFORM, valueOf: AirframesClientFrame_Source_Host_Platform.valueOf, enumValues: AirframesClientFrame_Source_Host_Platform.values)
    ..e<AirframesClientFrame_Source_Host_OperatingSystem>(2, 'os', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientFrame_Source_Host_OperatingSystem.UNKNOWN_OPERATING_SYSTEM, valueOf: AirframesClientFrame_Source_Host_OperatingSystem.valueOf, enumValues: AirframesClientFrame_Source_Host_OperatingSystem.values)
    ..aOS(3, 'version')
    ..aOS(4, 'nodeName')
    ..aOS(5, 'nodeIp')
    ..hasRequiredFields = false
  ;

  AirframesClientFrame_Source_Host._() : super();
  factory AirframesClientFrame_Source_Host() => create();
  factory AirframesClientFrame_Source_Host.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame_Source_Host.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame_Source_Host clone() => AirframesClientFrame_Source_Host()..mergeFromMessage(this);
  AirframesClientFrame_Source_Host copyWith(void Function(AirframesClientFrame_Source_Host) updates) => super.copyWith((message) => updates(message as AirframesClientFrame_Source_Host));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source_Host create() => AirframesClientFrame_Source_Host._();
  AirframesClientFrame_Source_Host createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame_Source_Host> createRepeated() => $pb.PbList<AirframesClientFrame_Source_Host>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source_Host getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame_Source_Host>(create);
  static AirframesClientFrame_Source_Host _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientFrame_Source_Host_Platform get platform => $_getN(0);
  @$pb.TagNumber(1)
  set platform(AirframesClientFrame_Source_Host_Platform v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlatform() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlatform() => clearField(1);

  @$pb.TagNumber(2)
  AirframesClientFrame_Source_Host_OperatingSystem get os => $_getN(1);
  @$pb.TagNumber(2)
  set os(AirframesClientFrame_Source_Host_OperatingSystem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOs() => $_has(1);
  @$pb.TagNumber(2)
  void clearOs() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nodeName => $_getSZ(3);
  @$pb.TagNumber(4)
  set nodeName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNodeName() => $_has(3);
  @$pb.TagNumber(4)
  void clearNodeName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nodeIp => $_getSZ(4);
  @$pb.TagNumber(5)
  set nodeIp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNodeIp() => $_has(4);
  @$pb.TagNumber(5)
  void clearNodeIp() => clearField(5);
}

class AirframesClientFrame_Source extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame.Source', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..aOM<AirframesClientFrame_Source_App>(1, 'app', subBuilder: AirframesClientFrame_Source_App.create)
    ..aOM<AirframesClientFrame_Source_Host>(2, 'host', subBuilder: AirframesClientFrame_Source_Host.create)
    ..e<AirframesClientFrame_Source_SourceType>(3, 'type', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientFrame_Source_SourceType.ACARS, valueOf: AirframesClientFrame_Source_SourceType.valueOf, enumValues: AirframesClientFrame_Source_SourceType.values)
    ..e<AirframesClientFrame_Source_SourceFormat>(4, 'format', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientFrame_Source_SourceFormat.HUMAN_READABLE_TEXT, valueOf: AirframesClientFrame_Source_SourceFormat.valueOf, enumValues: AirframesClientFrame_Source_SourceFormat.values)
    ..hasRequiredFields = false
  ;

  AirframesClientFrame_Source._() : super();
  factory AirframesClientFrame_Source() => create();
  factory AirframesClientFrame_Source.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame_Source.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame_Source clone() => AirframesClientFrame_Source()..mergeFromMessage(this);
  AirframesClientFrame_Source copyWith(void Function(AirframesClientFrame_Source) updates) => super.copyWith((message) => updates(message as AirframesClientFrame_Source));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source create() => AirframesClientFrame_Source._();
  AirframesClientFrame_Source createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame_Source> createRepeated() => $pb.PbList<AirframesClientFrame_Source>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_Source getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame_Source>(create);
  static AirframesClientFrame_Source _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientFrame_Source_App get app => $_getN(0);
  @$pb.TagNumber(1)
  set app(AirframesClientFrame_Source_App v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasApp() => $_has(0);
  @$pb.TagNumber(1)
  void clearApp() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientFrame_Source_App ensureApp() => $_ensure(0);

  @$pb.TagNumber(2)
  AirframesClientFrame_Source_Host get host => $_getN(1);
  @$pb.TagNumber(2)
  set host(AirframesClientFrame_Source_Host v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHost() => $_has(1);
  @$pb.TagNumber(2)
  void clearHost() => clearField(2);
  @$pb.TagNumber(2)
  AirframesClientFrame_Source_Host ensureHost() => $_ensure(1);

  @$pb.TagNumber(3)
  AirframesClientFrame_Source_SourceType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(AirframesClientFrame_Source_SourceType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  AirframesClientFrame_Source_SourceFormat get format => $_getN(3);
  @$pb.TagNumber(4)
  set format(AirframesClientFrame_Source_SourceFormat v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFormat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormat() => clearField(4);
}

class AirframesClientFrame_AirframesConfig_Feed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame.AirframesConfig.Feed', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  AirframesClientFrame_AirframesConfig_Feed._() : super();
  factory AirframesClientFrame_AirframesConfig_Feed() => create();
  factory AirframesClientFrame_AirframesConfig_Feed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame_AirframesConfig_Feed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame_AirframesConfig_Feed clone() => AirframesClientFrame_AirframesConfig_Feed()..mergeFromMessage(this);
  AirframesClientFrame_AirframesConfig_Feed copyWith(void Function(AirframesClientFrame_AirframesConfig_Feed) updates) => super.copyWith((message) => updates(message as AirframesClientFrame_AirframesConfig_Feed));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_AirframesConfig_Feed create() => AirframesClientFrame_AirframesConfig_Feed._();
  AirframesClientFrame_AirframesConfig_Feed createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame_AirframesConfig_Feed> createRepeated() => $pb.PbList<AirframesClientFrame_AirframesConfig_Feed>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_AirframesConfig_Feed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame_AirframesConfig_Feed>(create);
  static AirframesClientFrame_AirframesConfig_Feed _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AirframesClientFrame_AirframesConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame.AirframesConfig', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..aOM<AirframesClientFrame_AirframesConfig_Feed>(1, 'feed', subBuilder: AirframesClientFrame_AirframesConfig_Feed.create)
    ..hasRequiredFields = false
  ;

  AirframesClientFrame_AirframesConfig._() : super();
  factory AirframesClientFrame_AirframesConfig() => create();
  factory AirframesClientFrame_AirframesConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame_AirframesConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame_AirframesConfig clone() => AirframesClientFrame_AirframesConfig()..mergeFromMessage(this);
  AirframesClientFrame_AirframesConfig copyWith(void Function(AirframesClientFrame_AirframesConfig) updates) => super.copyWith((message) => updates(message as AirframesClientFrame_AirframesConfig));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_AirframesConfig create() => AirframesClientFrame_AirframesConfig._();
  AirframesClientFrame_AirframesConfig createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame_AirframesConfig> createRepeated() => $pb.PbList<AirframesClientFrame_AirframesConfig>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame_AirframesConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame_AirframesConfig>(create);
  static AirframesClientFrame_AirframesConfig _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientFrame_AirframesConfig_Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(AirframesClientFrame_AirframesConfig_Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientFrame_AirframesConfig_Feed ensureFeed() => $_ensure(0);
}

enum AirframesClientFrame_Message {
  acarsdecMessage, 
  vdlm2decMessage, 
  notSet
}

class AirframesClientFrame extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AirframesClientFrame_Message> _AirframesClientFrame_MessageByTag = {
    3 : AirframesClientFrame_Message.acarsdecMessage,
    4 : AirframesClientFrame_Message.vdlm2decMessage,
    0 : AirframesClientFrame_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientFrame', package: const $pb.PackageName('airframes'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOM<AirframesClientFrame_Source>(1, 'source', subBuilder: AirframesClientFrame_Source.create)
    ..aOM<AirframesClientFrame_AirframesConfig>(2, 'airframes', subBuilder: AirframesClientFrame_AirframesConfig.create)
    ..aOM<AcarsdecMessage>(3, 'acarsdecMessage', subBuilder: AcarsdecMessage.create)
    ..aOM<Vdlm2decMessage>(4, 'vdlm2decMessage', subBuilder: Vdlm2decMessage.create)
    ..hasRequiredFields = false
  ;

  AirframesClientFrame._() : super();
  factory AirframesClientFrame() => create();
  factory AirframesClientFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientFrame clone() => AirframesClientFrame()..mergeFromMessage(this);
  AirframesClientFrame copyWith(void Function(AirframesClientFrame) updates) => super.copyWith((message) => updates(message as AirframesClientFrame));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame create() => AirframesClientFrame._();
  AirframesClientFrame createEmptyInstance() => create();
  static $pb.PbList<AirframesClientFrame> createRepeated() => $pb.PbList<AirframesClientFrame>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientFrame>(create);
  static AirframesClientFrame _defaultInstance;

  AirframesClientFrame_Message whichMessage() => _AirframesClientFrame_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AirframesClientFrame_Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(AirframesClientFrame_Source v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientFrame_Source ensureSource() => $_ensure(0);

  @$pb.TagNumber(2)
  AirframesClientFrame_AirframesConfig get airframes => $_getN(1);
  @$pb.TagNumber(2)
  set airframes(AirframesClientFrame_AirframesConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAirframes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAirframes() => clearField(2);
  @$pb.TagNumber(2)
  AirframesClientFrame_AirframesConfig ensureAirframes() => $_ensure(1);

  @$pb.TagNumber(3)
  AcarsdecMessage get acarsdecMessage => $_getN(2);
  @$pb.TagNumber(3)
  set acarsdecMessage(AcarsdecMessage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAcarsdecMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcarsdecMessage() => clearField(3);
  @$pb.TagNumber(3)
  AcarsdecMessage ensureAcarsdecMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  Vdlm2decMessage get vdlm2decMessage => $_getN(3);
  @$pb.TagNumber(4)
  set vdlm2decMessage(Vdlm2decMessage v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVdlm2decMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearVdlm2decMessage() => clearField(4);
  @$pb.TagNumber(4)
  Vdlm2decMessage ensureVdlm2decMessage() => $_ensure(3);
}

class AirframesApi {
  $pb.RpcClient _client;
  AirframesApi(this._client);

  $async.Future<AirframesClientFrame> sendExampleFrame($pb.ClientContext ctx, TestRequest request) {
    var emptyResponse = AirframesClientFrame();
    return _client.invoke<AirframesClientFrame>(ctx, 'Airframes', 'SendExampleFrame', request, emptyResponse);
  }
  $async.Future<AirframesClientFrame> sendFrame($pb.ClientContext ctx, AirframesClientFrame request) {
    var emptyResponse = AirframesClientFrame();
    return _client.invoke<AirframesClientFrame>(ctx, 'Airframes', 'SendFrame', request, emptyResponse);
  }
  $async.Future<AirframesClientFrame> getFrame($pb.ClientContext ctx, FrameRequest request) {
    var emptyResponse = AirframesClientFrame();
    return _client.invoke<AirframesClientFrame>(ctx, 'Airframes', 'GetFrame', request, emptyResponse);
  }
  $async.Future<AirframesClientFrame> getFrames($pb.ClientContext ctx, FrameRequest request) {
    var emptyResponse = AirframesClientFrame();
    return _client.invoke<AirframesClientFrame>(ctx, 'Airframes', 'GetFrames', request, emptyResponse);
  }
}

