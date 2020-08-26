///
//  Generated code. Do not modify.
//  source: airframes_client_output_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'airframes_client_output_frame.pbenum.dart';

export 'airframes_client_output_frame.pbenum.dart';

class AirframesClientOutputFrame_Source_App extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame.Source.App', createEmptyInstance: create)
    ..e<AirframesClientOutputFrame_Source_App_AppType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientOutputFrame_Source_App_AppType.UNKNOWN_APP_TYPE, valueOf: AirframesClientOutputFrame_Source_App_AppType.valueOf, enumValues: AirframesClientOutputFrame_Source_App_AppType.values)
    ..aOS(2, 'version')
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame_Source_App._() : super();
  factory AirframesClientOutputFrame_Source_App() => create();
  factory AirframesClientOutputFrame_Source_App.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame_Source_App.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame_Source_App clone() => AirframesClientOutputFrame_Source_App()..mergeFromMessage(this);
  AirframesClientOutputFrame_Source_App copyWith(void Function(AirframesClientOutputFrame_Source_App) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame_Source_App));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source_App create() => AirframesClientOutputFrame_Source_App._();
  AirframesClientOutputFrame_Source_App createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame_Source_App> createRepeated() => $pb.PbList<AirframesClientOutputFrame_Source_App>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source_App getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame_Source_App>(create);
  static AirframesClientOutputFrame_Source_App _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source_App_AppType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AirframesClientOutputFrame_Source_App_AppType v) { setField(1, v); }
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

class AirframesClientOutputFrame_Source_Host extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame.Source.Host', createEmptyInstance: create)
    ..e<AirframesClientOutputFrame_Source_Host_Platform>(1, 'platform', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientOutputFrame_Source_Host_Platform.UNKNOWN_PLATFORM, valueOf: AirframesClientOutputFrame_Source_Host_Platform.valueOf, enumValues: AirframesClientOutputFrame_Source_Host_Platform.values)
    ..e<AirframesClientOutputFrame_Source_Host_OperatingSystem>(2, 'os', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientOutputFrame_Source_Host_OperatingSystem.UNKNOWN_OPERATING_SYSTEM, valueOf: AirframesClientOutputFrame_Source_Host_OperatingSystem.valueOf, enumValues: AirframesClientOutputFrame_Source_Host_OperatingSystem.values)
    ..aOS(3, 'version')
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame_Source_Host._() : super();
  factory AirframesClientOutputFrame_Source_Host() => create();
  factory AirframesClientOutputFrame_Source_Host.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame_Source_Host.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame_Source_Host clone() => AirframesClientOutputFrame_Source_Host()..mergeFromMessage(this);
  AirframesClientOutputFrame_Source_Host copyWith(void Function(AirframesClientOutputFrame_Source_Host) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame_Source_Host));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source_Host create() => AirframesClientOutputFrame_Source_Host._();
  AirframesClientOutputFrame_Source_Host createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame_Source_Host> createRepeated() => $pb.PbList<AirframesClientOutputFrame_Source_Host>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source_Host getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame_Source_Host>(create);
  static AirframesClientOutputFrame_Source_Host _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source_Host_Platform get platform => $_getN(0);
  @$pb.TagNumber(1)
  set platform(AirframesClientOutputFrame_Source_Host_Platform v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlatform() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlatform() => clearField(1);

  @$pb.TagNumber(2)
  AirframesClientOutputFrame_Source_Host_OperatingSystem get os => $_getN(1);
  @$pb.TagNumber(2)
  set os(AirframesClientOutputFrame_Source_Host_OperatingSystem v) { setField(2, v); }
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
}

class AirframesClientOutputFrame_Source extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame.Source', createEmptyInstance: create)
    ..aOM<AirframesClientOutputFrame_Source_App>(1, 'app', subBuilder: AirframesClientOutputFrame_Source_App.create)
    ..aOM<AirframesClientOutputFrame_Source_Host>(2, 'host', subBuilder: AirframesClientOutputFrame_Source_Host.create)
    ..e<AirframesClientOutputFrame_Source_SourceType>(3, 'type', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientOutputFrame_Source_SourceType.ACARS, valueOf: AirframesClientOutputFrame_Source_SourceType.valueOf, enumValues: AirframesClientOutputFrame_Source_SourceType.values)
    ..e<AirframesClientOutputFrame_Source_SourceFormat>(4, 'format', $pb.PbFieldType.OE, defaultOrMaker: AirframesClientOutputFrame_Source_SourceFormat.HUMAN_READABLE_TEXT, valueOf: AirframesClientOutputFrame_Source_SourceFormat.valueOf, enumValues: AirframesClientOutputFrame_Source_SourceFormat.values)
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame_Source._() : super();
  factory AirframesClientOutputFrame_Source() => create();
  factory AirframesClientOutputFrame_Source.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame_Source.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame_Source clone() => AirframesClientOutputFrame_Source()..mergeFromMessage(this);
  AirframesClientOutputFrame_Source copyWith(void Function(AirframesClientOutputFrame_Source) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame_Source));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source create() => AirframesClientOutputFrame_Source._();
  AirframesClientOutputFrame_Source createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame_Source> createRepeated() => $pb.PbList<AirframesClientOutputFrame_Source>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_Source getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame_Source>(create);
  static AirframesClientOutputFrame_Source _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source_App get app => $_getN(0);
  @$pb.TagNumber(1)
  set app(AirframesClientOutputFrame_Source_App v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasApp() => $_has(0);
  @$pb.TagNumber(1)
  void clearApp() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source_App ensureApp() => $_ensure(0);

  @$pb.TagNumber(2)
  AirframesClientOutputFrame_Source_Host get host => $_getN(1);
  @$pb.TagNumber(2)
  set host(AirframesClientOutputFrame_Source_Host v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHost() => $_has(1);
  @$pb.TagNumber(2)
  void clearHost() => clearField(2);
  @$pb.TagNumber(2)
  AirframesClientOutputFrame_Source_Host ensureHost() => $_ensure(1);

  @$pb.TagNumber(3)
  AirframesClientOutputFrame_Source_SourceType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(AirframesClientOutputFrame_Source_SourceType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  AirframesClientOutputFrame_Source_SourceFormat get format => $_getN(3);
  @$pb.TagNumber(4)
  set format(AirframesClientOutputFrame_Source_SourceFormat v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFormat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormat() => clearField(4);
}

class AirframesClientOutputFrame_AirframesConfig_Feed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame.AirframesConfig.Feed', createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame_AirframesConfig_Feed._() : super();
  factory AirframesClientOutputFrame_AirframesConfig_Feed() => create();
  factory AirframesClientOutputFrame_AirframesConfig_Feed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame_AirframesConfig_Feed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame_AirframesConfig_Feed clone() => AirframesClientOutputFrame_AirframesConfig_Feed()..mergeFromMessage(this);
  AirframesClientOutputFrame_AirframesConfig_Feed copyWith(void Function(AirframesClientOutputFrame_AirframesConfig_Feed) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame_AirframesConfig_Feed));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_AirframesConfig_Feed create() => AirframesClientOutputFrame_AirframesConfig_Feed._();
  AirframesClientOutputFrame_AirframesConfig_Feed createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame_AirframesConfig_Feed> createRepeated() => $pb.PbList<AirframesClientOutputFrame_AirframesConfig_Feed>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_AirframesConfig_Feed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame_AirframesConfig_Feed>(create);
  static AirframesClientOutputFrame_AirframesConfig_Feed _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AirframesClientOutputFrame_AirframesConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame.AirframesConfig', createEmptyInstance: create)
    ..aOM<AirframesClientOutputFrame_AirframesConfig_Feed>(1, 'feed', subBuilder: AirframesClientOutputFrame_AirframesConfig_Feed.create)
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame_AirframesConfig._() : super();
  factory AirframesClientOutputFrame_AirframesConfig() => create();
  factory AirframesClientOutputFrame_AirframesConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame_AirframesConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame_AirframesConfig clone() => AirframesClientOutputFrame_AirframesConfig()..mergeFromMessage(this);
  AirframesClientOutputFrame_AirframesConfig copyWith(void Function(AirframesClientOutputFrame_AirframesConfig) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame_AirframesConfig));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_AirframesConfig create() => AirframesClientOutputFrame_AirframesConfig._();
  AirframesClientOutputFrame_AirframesConfig createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame_AirframesConfig> createRepeated() => $pb.PbList<AirframesClientOutputFrame_AirframesConfig>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame_AirframesConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame_AirframesConfig>(create);
  static AirframesClientOutputFrame_AirframesConfig _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientOutputFrame_AirframesConfig_Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(AirframesClientOutputFrame_AirframesConfig_Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientOutputFrame_AirframesConfig_Feed ensureFeed() => $_ensure(0);
}

class AirframesClientOutputFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AirframesClientOutputFrame', createEmptyInstance: create)
    ..aOM<AirframesClientOutputFrame_Source>(1, 'source', subBuilder: AirframesClientOutputFrame_Source.create)
    ..aOM<AirframesClientOutputFrame_AirframesConfig>(2, 'airframes', subBuilder: AirframesClientOutputFrame_AirframesConfig.create)
    ..aOS(3, 'payload')
    ..hasRequiredFields = false
  ;

  AirframesClientOutputFrame._() : super();
  factory AirframesClientOutputFrame() => create();
  factory AirframesClientOutputFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirframesClientOutputFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AirframesClientOutputFrame clone() => AirframesClientOutputFrame()..mergeFromMessage(this);
  AirframesClientOutputFrame copyWith(void Function(AirframesClientOutputFrame) updates) => super.copyWith((message) => updates(message as AirframesClientOutputFrame));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame create() => AirframesClientOutputFrame._();
  AirframesClientOutputFrame createEmptyInstance() => create();
  static $pb.PbList<AirframesClientOutputFrame> createRepeated() => $pb.PbList<AirframesClientOutputFrame>();
  @$core.pragma('dart2js:noInline')
  static AirframesClientOutputFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirframesClientOutputFrame>(create);
  static AirframesClientOutputFrame _defaultInstance;

  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(AirframesClientOutputFrame_Source v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
  @$pb.TagNumber(1)
  AirframesClientOutputFrame_Source ensureSource() => $_ensure(0);

  @$pb.TagNumber(2)
  AirframesClientOutputFrame_AirframesConfig get airframes => $_getN(1);
  @$pb.TagNumber(2)
  set airframes(AirframesClientOutputFrame_AirframesConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAirframes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAirframes() => clearField(2);
  @$pb.TagNumber(2)
  AirframesClientOutputFrame_AirframesConfig ensureAirframes() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);
  @$pb.TagNumber(3)
  set payload($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
}

