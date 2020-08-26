///
//  Generated code. Do not modify.
//  source: airframes_client_output_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AirframesClientOutputFrame$json = const {
  '1': 'AirframesClientOutputFrame',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 11, '6': '.AirframesClientOutputFrame.Source', '10': 'source'},
    const {'1': 'airframes', '3': 2, '4': 1, '5': 11, '6': '.AirframesClientOutputFrame.AirframesConfig', '10': 'airframes'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 9, '10': 'payload'},
  ],
  '3': const [AirframesClientOutputFrame_Source$json, AirframesClientOutputFrame_AirframesConfig$json],
};

const AirframesClientOutputFrame_Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'app', '3': 1, '4': 1, '5': 11, '6': '.AirframesClientOutputFrame.Source.App', '10': 'app'},
    const {'1': 'host', '3': 2, '4': 1, '5': 11, '6': '.AirframesClientOutputFrame.Source.Host', '10': 'host'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.AirframesClientOutputFrame.Source.SourceType', '10': 'type'},
    const {'1': 'format', '3': 4, '4': 1, '5': 14, '6': '.AirframesClientOutputFrame.Source.SourceFormat', '10': 'format'},
  ],
  '3': const [AirframesClientOutputFrame_Source_App$json, AirframesClientOutputFrame_Source_Host$json],
  '4': const [AirframesClientOutputFrame_Source_SourceType$json, AirframesClientOutputFrame_Source_SourceFormat$json],
};

const AirframesClientOutputFrame_Source_App$json = const {
  '1': 'App',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.AirframesClientOutputFrame.Source.App.AppType', '10': 'type'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [AirframesClientOutputFrame_Source_App_AppType$json],
};

const AirframesClientOutputFrame_Source_App_AppType$json = const {
  '1': 'AppType',
  '2': const [
    const {'1': 'UNKNOWN_APP_TYPE', '2': 0},
    const {'1': 'ACARSDEC', '2': 1},
    const {'1': 'ACARSDECO2', '2': 2},
    const {'1': 'VDLM2DEC', '2': 3},
    const {'1': 'DUMPVDL2', '2': 4},
    const {'1': 'JAERO', '2': 5},
    const {'1': 'PC_HFDL', '2': 6},
    const {'1': 'SORCERER', '2': 7},
  ],
};

const AirframesClientOutputFrame_Source_Host$json = const {
  '1': 'Host',
  '2': const [
    const {'1': 'platform', '3': 1, '4': 1, '5': 14, '6': '.AirframesClientOutputFrame.Source.Host.Platform', '10': 'platform'},
    const {'1': 'os', '3': 2, '4': 1, '5': 14, '6': '.AirframesClientOutputFrame.Source.Host.OperatingSystem', '10': 'os'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [AirframesClientOutputFrame_Source_Host_Platform$json, AirframesClientOutputFrame_Source_Host_OperatingSystem$json],
};

const AirframesClientOutputFrame_Source_Host_Platform$json = const {
  '1': 'Platform',
  '2': const [
    const {'1': 'UNKNOWN_PLATFORM', '2': 0},
    const {'1': 'X86_32', '2': 1},
    const {'1': 'X86_64', '2': 2},
    const {'1': 'ARM_V6', '2': 3},
    const {'1': 'ARM_V7', '2': 4},
    const {'1': 'ARM_64', '2': 5},
  ],
};

const AirframesClientOutputFrame_Source_Host_OperatingSystem$json = const {
  '1': 'OperatingSystem',
  '2': const [
    const {'1': 'UNKNOWN_OPERATING_SYSTEM', '2': 0},
    const {'1': 'LINUX', '2': 1},
    const {'1': 'MACOS', '2': 2},
    const {'1': 'WINDOWS', '2': 3},
  ],
};

const AirframesClientOutputFrame_Source_SourceType$json = const {
  '1': 'SourceType',
  '2': const [
    const {'1': 'ACARS', '2': 0},
    const {'1': 'VDL', '2': 1},
    const {'1': 'HFDL', '2': 2},
    const {'1': 'AERO', '2': 3},
  ],
};

const AirframesClientOutputFrame_Source_SourceFormat$json = const {
  '1': 'SourceFormat',
  '2': const [
    const {'1': 'HUMAN_READABLE_TEXT', '2': 0},
    const {'1': 'BEAST', '2': 1},
    const {'1': 'SBS3', '2': 2},
    const {'1': 'PLANE_PLOTTER', '2': 3},
    const {'1': 'JSON_GENERIC', '2': 4},
    const {'1': 'JSON_ACARSDEC', '2': 5},
    const {'1': 'JSON_VDLM2DEC', '2': 6},
  ],
};

const AirframesClientOutputFrame_AirframesConfig$json = const {
  '1': 'AirframesConfig',
  '2': const [
    const {'1': 'feed', '3': 1, '4': 1, '5': 11, '6': '.AirframesClientOutputFrame.AirframesConfig.Feed', '10': 'feed'},
  ],
  '3': const [AirframesClientOutputFrame_AirframesConfig_Feed$json],
};

const AirframesClientOutputFrame_AirframesConfig_Feed$json = const {
  '1': 'Feed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

