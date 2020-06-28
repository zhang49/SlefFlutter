///
//  Generated code. Do not modify.
//  source: CSCPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CSCRequestMessageType$json = const {
  '1': 'CSCRequestMessageType',
  '2': const [
    const {'1': 'EC2CRequestFillField', '2': 0},
    const {'1': 'EC2CRequest', '2': 1048576},
    const {'1': 'EC2CCaptureScreenStartRequest', '2': 1048577},
    const {'1': 'EC2CCaptureScreenStopRequest', '2': 1048578},
    const {'1': 'EC2CPcInformationRequest', '2': 1048579},
  ],
};

const CSCReplyMessageType$json = const {
  '1': 'CSCReplyMessageType',
  '2': const [
    const {'1': 'EC2CReplyFillField', '2': 0},
    const {'1': 'EC2CReply', '2': 2097152},
    const {'1': 'EC2CGetPairClientListReply', '2': 2097153},
    const {'1': 'EC2CCaptureScreenStartReply', '2': 2097154},
    const {'1': 'EC2CCaptureScreenStopReply', '2': 2097155},
    const {'1': 'EC2CPcInformationReply', '2': 2097156},
    const {'1': 'EC2CMouseReport', '2': 2424832},
    const {'1': 'EC2CKeyboardReport', '2': 2424833},
    const {'1': 'EC2CScreenImageBufferReport', '2': 2424834},
  ],
};

const CaptureScreenStartRequest$json = const {
  '1': 'CaptureScreenStartRequest',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    const {'1': 'width', '3': 3, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'quality', '3': 5, '4': 1, '5': 5, '10': 'quality'},
  ],
};

const MouseReport$json = const {
  '1': 'MouseReport',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    const {'1': 'btn', '3': 3, '4': 1, '5': 5, '10': 'btn'},
    const {'1': 'wheelPosition', '3': 4, '4': 1, '5': 5, '10': 'wheelPosition'},
  ],
};

const KeyboardReport$json = const {
  '1': 'KeyboardReport',
  '2': const [
    const {'1': 'shiftKeyFlags', '3': 1, '4': 1, '5': 5, '10': 'shiftKeyFlags'},
    const {'1': 'keyCodes', '3': 2, '4': 3, '5': 5, '10': 'keyCodes'},
  ],
};

const ScreenImageBufferReport$json = const {
  '1': 'ScreenImageBufferReport',
  '2': const [
    const {'1': 'bitMap', '3': 1, '4': 1, '5': 12, '10': 'bitMap'},
  ],
};

const CaptureScreenStartReply$json = const {
  '1': 'CaptureScreenStartReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const CaptureScreenStopReply$json = const {
  '1': 'CaptureScreenStopReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const PcInfoReply$json = const {
  '1': 'PcInfoReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'width', '3': 3, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 5, '10': 'height'},
  ],
};

