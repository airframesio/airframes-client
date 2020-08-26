///
//  Generated code. Do not modify.
//  source: airframes_client_output_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AirframesClientOutputFrame_Source_SourceType extends $pb.ProtobufEnum {
  static const AirframesClientOutputFrame_Source_SourceType ACARS = AirframesClientOutputFrame_Source_SourceType._(0, 'ACARS');
  static const AirframesClientOutputFrame_Source_SourceType VDL = AirframesClientOutputFrame_Source_SourceType._(1, 'VDL');
  static const AirframesClientOutputFrame_Source_SourceType HFDL = AirframesClientOutputFrame_Source_SourceType._(2, 'HFDL');
  static const AirframesClientOutputFrame_Source_SourceType AERO = AirframesClientOutputFrame_Source_SourceType._(3, 'AERO');

  static const $core.List<AirframesClientOutputFrame_Source_SourceType> values = <AirframesClientOutputFrame_Source_SourceType> [
    ACARS,
    VDL,
    HFDL,
    AERO,
  ];

  static final $core.Map<$core.int, AirframesClientOutputFrame_Source_SourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AirframesClientOutputFrame_Source_SourceType valueOf($core.int value) => _byValue[value];

  const AirframesClientOutputFrame_Source_SourceType._($core.int v, $core.String n) : super(v, n);
}

class AirframesClientOutputFrame_Source_SourceFormat extends $pb.ProtobufEnum {
  static const AirframesClientOutputFrame_Source_SourceFormat HUMAN_READABLE_TEXT = AirframesClientOutputFrame_Source_SourceFormat._(0, 'HUMAN_READABLE_TEXT');
  static const AirframesClientOutputFrame_Source_SourceFormat BEAST = AirframesClientOutputFrame_Source_SourceFormat._(1, 'BEAST');
  static const AirframesClientOutputFrame_Source_SourceFormat SBS3 = AirframesClientOutputFrame_Source_SourceFormat._(2, 'SBS3');
  static const AirframesClientOutputFrame_Source_SourceFormat PLANE_PLOTTER = AirframesClientOutputFrame_Source_SourceFormat._(3, 'PLANE_PLOTTER');
  static const AirframesClientOutputFrame_Source_SourceFormat JSON_GENERIC = AirframesClientOutputFrame_Source_SourceFormat._(4, 'JSON_GENERIC');
  static const AirframesClientOutputFrame_Source_SourceFormat JSON_ACARSDEC = AirframesClientOutputFrame_Source_SourceFormat._(5, 'JSON_ACARSDEC');
  static const AirframesClientOutputFrame_Source_SourceFormat JSON_VDLM2DEC = AirframesClientOutputFrame_Source_SourceFormat._(6, 'JSON_VDLM2DEC');

  static const $core.List<AirframesClientOutputFrame_Source_SourceFormat> values = <AirframesClientOutputFrame_Source_SourceFormat> [
    HUMAN_READABLE_TEXT,
    BEAST,
    SBS3,
    PLANE_PLOTTER,
    JSON_GENERIC,
    JSON_ACARSDEC,
    JSON_VDLM2DEC,
  ];

  static final $core.Map<$core.int, AirframesClientOutputFrame_Source_SourceFormat> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AirframesClientOutputFrame_Source_SourceFormat valueOf($core.int value) => _byValue[value];

  const AirframesClientOutputFrame_Source_SourceFormat._($core.int v, $core.String n) : super(v, n);
}

class AirframesClientOutputFrame_Source_App_AppType extends $pb.ProtobufEnum {
  static const AirframesClientOutputFrame_Source_App_AppType UNKNOWN_APP_TYPE = AirframesClientOutputFrame_Source_App_AppType._(0, 'UNKNOWN_APP_TYPE');
  static const AirframesClientOutputFrame_Source_App_AppType ACARSDEC = AirframesClientOutputFrame_Source_App_AppType._(1, 'ACARSDEC');
  static const AirframesClientOutputFrame_Source_App_AppType ACARSDECO2 = AirframesClientOutputFrame_Source_App_AppType._(2, 'ACARSDECO2');
  static const AirframesClientOutputFrame_Source_App_AppType VDLM2DEC = AirframesClientOutputFrame_Source_App_AppType._(3, 'VDLM2DEC');
  static const AirframesClientOutputFrame_Source_App_AppType DUMPVDL2 = AirframesClientOutputFrame_Source_App_AppType._(4, 'DUMPVDL2');
  static const AirframesClientOutputFrame_Source_App_AppType JAERO = AirframesClientOutputFrame_Source_App_AppType._(5, 'JAERO');
  static const AirframesClientOutputFrame_Source_App_AppType PC_HFDL = AirframesClientOutputFrame_Source_App_AppType._(6, 'PC_HFDL');
  static const AirframesClientOutputFrame_Source_App_AppType SORCERER = AirframesClientOutputFrame_Source_App_AppType._(7, 'SORCERER');

  static const $core.List<AirframesClientOutputFrame_Source_App_AppType> values = <AirframesClientOutputFrame_Source_App_AppType> [
    UNKNOWN_APP_TYPE,
    ACARSDEC,
    ACARSDECO2,
    VDLM2DEC,
    DUMPVDL2,
    JAERO,
    PC_HFDL,
    SORCERER,
  ];

  static final $core.Map<$core.int, AirframesClientOutputFrame_Source_App_AppType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AirframesClientOutputFrame_Source_App_AppType valueOf($core.int value) => _byValue[value];

  const AirframesClientOutputFrame_Source_App_AppType._($core.int v, $core.String n) : super(v, n);
}

class AirframesClientOutputFrame_Source_Host_Platform extends $pb.ProtobufEnum {
  static const AirframesClientOutputFrame_Source_Host_Platform UNKNOWN_PLATFORM = AirframesClientOutputFrame_Source_Host_Platform._(0, 'UNKNOWN_PLATFORM');
  static const AirframesClientOutputFrame_Source_Host_Platform X86_32 = AirframesClientOutputFrame_Source_Host_Platform._(1, 'X86_32');
  static const AirframesClientOutputFrame_Source_Host_Platform X86_64 = AirframesClientOutputFrame_Source_Host_Platform._(2, 'X86_64');
  static const AirframesClientOutputFrame_Source_Host_Platform ARM_V6 = AirframesClientOutputFrame_Source_Host_Platform._(3, 'ARM_V6');
  static const AirframesClientOutputFrame_Source_Host_Platform ARM_V7 = AirframesClientOutputFrame_Source_Host_Platform._(4, 'ARM_V7');
  static const AirframesClientOutputFrame_Source_Host_Platform ARM_64 = AirframesClientOutputFrame_Source_Host_Platform._(5, 'ARM_64');

  static const $core.List<AirframesClientOutputFrame_Source_Host_Platform> values = <AirframesClientOutputFrame_Source_Host_Platform> [
    UNKNOWN_PLATFORM,
    X86_32,
    X86_64,
    ARM_V6,
    ARM_V7,
    ARM_64,
  ];

  static final $core.Map<$core.int, AirframesClientOutputFrame_Source_Host_Platform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AirframesClientOutputFrame_Source_Host_Platform valueOf($core.int value) => _byValue[value];

  const AirframesClientOutputFrame_Source_Host_Platform._($core.int v, $core.String n) : super(v, n);
}

class AirframesClientOutputFrame_Source_Host_OperatingSystem extends $pb.ProtobufEnum {
  static const AirframesClientOutputFrame_Source_Host_OperatingSystem UNKNOWN_OPERATING_SYSTEM = AirframesClientOutputFrame_Source_Host_OperatingSystem._(0, 'UNKNOWN_OPERATING_SYSTEM');
  static const AirframesClientOutputFrame_Source_Host_OperatingSystem LINUX = AirframesClientOutputFrame_Source_Host_OperatingSystem._(1, 'LINUX');
  static const AirframesClientOutputFrame_Source_Host_OperatingSystem MACOS = AirframesClientOutputFrame_Source_Host_OperatingSystem._(2, 'MACOS');
  static const AirframesClientOutputFrame_Source_Host_OperatingSystem WINDOWS = AirframesClientOutputFrame_Source_Host_OperatingSystem._(3, 'WINDOWS');

  static const $core.List<AirframesClientOutputFrame_Source_Host_OperatingSystem> values = <AirframesClientOutputFrame_Source_Host_OperatingSystem> [
    UNKNOWN_OPERATING_SYSTEM,
    LINUX,
    MACOS,
    WINDOWS,
  ];

  static final $core.Map<$core.int, AirframesClientOutputFrame_Source_Host_OperatingSystem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AirframesClientOutputFrame_Source_Host_OperatingSystem valueOf($core.int value) => _byValue[value];

  const AirframesClientOutputFrame_Source_Host_OperatingSystem._($core.int v, $core.String n) : super(v, n);
}

