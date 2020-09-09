///
//  Generated code. Do not modify.
//  source: airframes_client_frame.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AcarsdecMessage$json = const {
  '1': 'AcarsdecMessage',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 1, '10': 'timestamp'},
    const {'1': 'station_id', '3': 2, '4': 1, '5': 9, '10': 'stationId'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    const {'1': 'frequency', '3': 4, '4': 1, '5': 1, '10': 'frequency'},
    const {'1': 'level', '3': 5, '4': 1, '5': 17, '10': 'level'},
    const {'1': 'error', '3': 6, '4': 1, '5': 13, '10': 'error'},
    const {'1': 'mode', '3': 7, '4': 1, '5': 9, '10': 'mode'},
    const {'1': 'label', '3': 8, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'block_id', '3': 9, '4': 1, '5': 9, '10': 'blockId'},
    const {'1': 'ack', '3': 10, '4': 1, '5': 9, '10': 'ack'},
    const {'1': 'tail', '3': 11, '4': 1, '5': 9, '10': 'tail'},
    const {'1': 'flight', '3': 12, '4': 1, '5': 9, '10': 'flight'},
    const {'1': 'message_number', '3': 13, '4': 1, '5': 9, '10': 'messageNumber'},
    const {'1': 'text', '3': 14, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'end', '3': 15, '4': 1, '5': 8, '10': 'end'},
  ],
};

const Vdlm2decMessage$json = const {
  '1': 'Vdlm2decMessage',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 1, '10': 'timestamp'},
    const {'1': 'station_id', '3': 2, '4': 1, '5': 9, '10': 'stationId'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    const {'1': 'frequency', '3': 4, '4': 1, '5': 1, '10': 'frequency'},
    const {'1': 'from_icao', '3': 5, '4': 1, '5': 13, '10': 'fromIcao'},
    const {'1': 'to_icao', '3': 6, '4': 1, '5': 13, '10': 'toIcao'},
    const {'1': 'level', '3': 7, '4': 1, '5': 17, '10': 'level'},
    const {'1': 'error', '3': 8, '4': 1, '5': 13, '10': 'error'},
    const {'1': 'mode', '3': 9, '4': 1, '5': 9, '10': 'mode'},
    const {'1': 'label', '3': 10, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'block_id', '3': 11, '4': 1, '5': 9, '10': 'blockId'},
    const {'1': 'ack', '3': 12, '4': 1, '5': 9, '10': 'ack'},
    const {'1': 'tail', '3': 13, '4': 1, '5': 9, '10': 'tail'},
    const {'1': 'flight', '3': 14, '4': 1, '5': 9, '10': 'flight'},
    const {'1': 'message_number', '3': 15, '4': 1, '5': 9, '10': 'messageNumber'},
    const {'1': 'text', '3': 16, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'end', '3': 17, '4': 1, '5': 8, '10': 'end'},
    const {'1': 'departure_airport', '3': 18, '4': 1, '5': 9, '10': 'departureAirport'},
    const {'1': 'destination_airport', '3': 19, '4': 1, '5': 9, '10': 'destinationAirport'},
    const {'1': 'arrival_eta', '3': 20, '4': 1, '5': 9, '10': 'arrivalEta'},
    const {'1': 'gate_out', '3': 21, '4': 1, '5': 9, '10': 'gateOut'},
    const {'1': 'ground_off', '3': 22, '4': 1, '5': 9, '10': 'groundOff'},
    const {'1': 'ground_on', '3': 23, '4': 1, '5': 9, '10': 'groundOn'},
    const {'1': 'gate_in', '3': 24, '4': 1, '5': 9, '10': 'gateIn'},
  ],
};

const TestRequest$json = const {
  '1': 'TestRequest',
};

const FrameRequest$json = const {
  '1': 'FrameRequest',
};

const AirframesClientFrame$json = const {
  '1': 'AirframesClientFrame',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 11, '6': '.airframes.AirframesClientFrame.Source', '10': 'source'},
    const {'1': 'airframes', '3': 2, '4': 1, '5': 11, '6': '.airframes.AirframesClientFrame.AirframesConfig', '10': 'airframes'},
    const {'1': 'acarsdec_message', '3': 3, '4': 1, '5': 11, '6': '.airframes.AcarsdecMessage', '9': 0, '10': 'acarsdecMessage'},
    const {'1': 'vdlm2dec_message', '3': 4, '4': 1, '5': 11, '6': '.airframes.Vdlm2decMessage', '9': 0, '10': 'vdlm2decMessage'},
  ],
  '3': const [AirframesClientFrame_Source$json, AirframesClientFrame_AirframesConfig$json],
  '8': const [
    const {'1': 'message'},
  ],
};

const AirframesClientFrame_Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'app', '3': 1, '4': 1, '5': 11, '6': '.airframes.AirframesClientFrame.Source.App', '10': 'app'},
    const {'1': 'host', '3': 2, '4': 1, '5': 11, '6': '.airframes.AirframesClientFrame.Source.Host', '10': 'host'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.airframes.AirframesClientFrame.Source.SourceType', '10': 'type'},
    const {'1': 'format', '3': 4, '4': 1, '5': 14, '6': '.airframes.AirframesClientFrame.Source.SourceFormat', '10': 'format'},
  ],
  '3': const [AirframesClientFrame_Source_App$json, AirframesClientFrame_Source_Host$json],
  '4': const [AirframesClientFrame_Source_SourceType$json, AirframesClientFrame_Source_SourceFormat$json],
};

const AirframesClientFrame_Source_App$json = const {
  '1': 'App',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.airframes.AirframesClientFrame.Source.App.AppType', '10': 'type'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [AirframesClientFrame_Source_App_AppType$json],
};

const AirframesClientFrame_Source_App_AppType$json = const {
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

const AirframesClientFrame_Source_Host$json = const {
  '1': 'Host',
  '2': const [
    const {'1': 'platform', '3': 1, '4': 1, '5': 14, '6': '.airframes.AirframesClientFrame.Source.Host.Platform', '10': 'platform'},
    const {'1': 'os', '3': 2, '4': 1, '5': 14, '6': '.airframes.AirframesClientFrame.Source.Host.OperatingSystem', '10': 'os'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'node_name', '3': 4, '4': 1, '5': 9, '10': 'nodeName'},
    const {'1': 'node_ip', '3': 5, '4': 1, '5': 9, '10': 'nodeIp'},
  ],
  '4': const [AirframesClientFrame_Source_Host_Platform$json, AirframesClientFrame_Source_Host_OperatingSystem$json],
};

const AirframesClientFrame_Source_Host_Platform$json = const {
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

const AirframesClientFrame_Source_Host_OperatingSystem$json = const {
  '1': 'OperatingSystem',
  '2': const [
    const {'1': 'UNKNOWN_OPERATING_SYSTEM', '2': 0},
    const {'1': 'LINUX', '2': 1},
    const {'1': 'MACOS', '2': 2},
    const {'1': 'WINDOWS', '2': 3},
  ],
};

const AirframesClientFrame_Source_SourceType$json = const {
  '1': 'SourceType',
  '2': const [
    const {'1': 'ACARS', '2': 0},
    const {'1': 'VDL', '2': 1},
    const {'1': 'HFDL', '2': 2},
    const {'1': 'AERO', '2': 3},
  ],
};

const AirframesClientFrame_Source_SourceFormat$json = const {
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

const AirframesClientFrame_AirframesConfig$json = const {
  '1': 'AirframesConfig',
  '2': const [
    const {'1': 'feed', '3': 1, '4': 1, '5': 11, '6': '.airframes.AirframesClientFrame.AirframesConfig.Feed', '10': 'feed'},
  ],
  '3': const [AirframesClientFrame_AirframesConfig_Feed$json],
};

const AirframesClientFrame_AirframesConfig_Feed$json = const {
  '1': 'Feed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const AirframesServiceBase$json = const {
  '1': 'Airframes',
  '2': const [
    const {'1': 'SendExampleFrame', '2': '.airframes.TestRequest', '3': '.airframes.AirframesClientFrame', '4': const {}},
    const {'1': 'SendFrame', '2': '.airframes.AirframesClientFrame', '3': '.airframes.AirframesClientFrame', '4': const {}},
    const {'1': 'GetFrame', '2': '.airframes.FrameRequest', '3': '.airframes.AirframesClientFrame', '4': const {}},
    const {'1': 'GetFrames', '2': '.airframes.FrameRequest', '3': '.airframes.AirframesClientFrame', '4': const {}, '6': true},
  ],
};

const AirframesServiceBase$messageJson = const {
  '.airframes.TestRequest': TestRequest$json,
  '.airframes.AirframesClientFrame': AirframesClientFrame$json,
  '.airframes.AirframesClientFrame.Source': AirframesClientFrame_Source$json,
  '.airframes.AirframesClientFrame.Source.App': AirframesClientFrame_Source_App$json,
  '.airframes.AirframesClientFrame.Source.Host': AirframesClientFrame_Source_Host$json,
  '.airframes.AirframesClientFrame.AirframesConfig': AirframesClientFrame_AirframesConfig$json,
  '.airframes.AirframesClientFrame.AirframesConfig.Feed': AirframesClientFrame_AirframesConfig_Feed$json,
  '.airframes.AcarsdecMessage': AcarsdecMessage$json,
  '.airframes.Vdlm2decMessage': Vdlm2decMessage$json,
  '.airframes.FrameRequest': FrameRequest$json,
};

