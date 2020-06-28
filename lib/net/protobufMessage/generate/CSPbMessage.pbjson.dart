///
//  Generated code. Do not modify.
//  source: CSPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CommDataProtocol$json = const {
  '1': 'CommDataProtocol',
  '2': const [
    const {'1': 'EProtobuf', '2': 0},
    const {'1': 'EJson', '2': 1},
    const {'1': 'ECustom', '2': 2},
  ],
};

const CSUserRequestMessageType$json = const {
  '1': 'CSUserRequestMessageType',
  '2': const [
    const {'1': 'EUserRequestFillField', '2': 0},
    const {'1': 'EUserRequest', '2': 1048576},
    const {'1': 'EUserVerityIdentityRequest', '2': 1048577},
    const {'1': 'EUserGetPairDevicesRequest', '2': 1048578},
    const {'1': 'EUserGetPairUserListRequest', '2': 1048579},
    const {'1': 'EUserMessageToPairDeviceRequest', '2': 1048580},
    const {'1': 'EUserAddPairDeivceRequest', '2': 1048581},
    const {'1': 'EUserAddDeivceRequest', '2': 1048582},
    const {'1': 'EUserDeviceHistoryDataRequest', '2': 1048583},
  ],
};

const CSDeviceRequestMessageType$json = const {
  '1': 'CSDeviceRequestMessageType',
  '2': const [
    const {'1': 'EDeviceRequestFillField', '2': 0},
    const {'1': 'EDeviceRequest', '2': 2097152},
    const {'1': 'EDeviceVerityRequest', '2': 2097153},
    const {'1': 'EDeviceUploadData', '2': 2097154},
    const {'1': 'EDeviceMessageToPairUserRequest', '2': 2097155},
    const {'1': 'EDeviceDataUploadRequest', '2': 2097156},
  ],
};

const CSUserReplyMessageType$json = const {
  '1': 'CSUserReplyMessageType',
  '2': const [
    const {'1': 'EUserReplyFillField', '2': 0},
    const {'1': 'EUserReply', '2': 3145728},
    const {'1': 'EUserVerityIdentityReply', '2': 3145729},
    const {'1': 'EUserGetPairDevicesReply', '2': 3145730},
    const {'1': 'EUserGetPairClientListReply', '2': 3145731},
    const {'1': 'EUserMessageToPairDeviceReply', '2': 3145732},
    const {'1': 'EUserAddDeivceReply', '2': 3145733},
    const {'1': 'EUserAddPairDeivceReply', '2': 3145734},
    const {'1': 'EUserDeviceHistoryDataReply', '2': 3145735},
    const {'1': 'EUserPairDeviceStateReport', '2': 3473408},
    const {'1': 'EUserInformationSyncReport', '2': 3473409},
    const {'1': 'EUserMessageToPairUserReport', '2': 3473410},
  ],
};

const CSDeviceReplyMessageType$json = const {
  '1': 'CSDeviceReplyMessageType',
  '2': const [
    const {'1': 'EDeviceReplyFillField', '2': 0},
    const {'1': 'EDeviceReply', '2': 4194304},
    const {'1': 'EDeviceVerityIdentityReply', '2': 4194305},
    const {'1': 'EDeviceMessageToPairUserReply', '2': 4194306},
    const {'1': 'EDeviceDataUploadReply', '2': 4194307},
    const {'1': 'EDeviceMessageToPairDeviceReport', '2': 4521984},
  ],
};

const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'cmdId', '3': 1, '4': 1, '5': 13, '10': 'cmdId'},
  ],
};

const Reply$json = const {
  '1': 'Reply',
  '2': const [
    const {'1': 'cmdId', '3': 1, '4': 1, '5': 13, '10': 'cmdId'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'createTime', '3': 3, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'lastLoginTime', '3': 4, '4': 1, '5': 3, '10': 'lastLoginTime'},
    const {'1': 'data', '3': 5, '4': 1, '5': 9, '10': 'data'},
  ],
};

const ClientInfo$json = const {
  '1': 'ClientInfo',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'deviceId', '3': 2, '4': 1, '5': 5, '10': 'deviceId'},
    const {'1': 'clientChannelId', '3': 3, '4': 1, '5': 9, '10': 'clientChannelId'},
    const {'1': 'ipAddress', '3': 4, '4': 1, '5': 9, '10': 'ipAddress'},
    const {'1': 'loginTime', '3': 5, '4': 1, '5': 3, '10': 'loginTime'},
    const {'1': 'state', '3': 6, '4': 1, '5': 5, '10': 'state'},
  ],
};

const MessageToUserDevicePairReport$json = const {
  '1': 'MessageToUserDevicePairReport',
  '2': const [
    const {'1': 'sourceId', '3': 1, '4': 1, '5': 5, '10': 'sourceId'},
    const {'1': 'sourceCtx', '3': 2, '4': 1, '5': 9, '10': 'sourceCtx'},
    const {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'length', '3': 4, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'byteArr', '3': 5, '4': 1, '5': 12, '10': 'byteArr'},
  ],
};

const InformationSyncReport$json = const {
  '1': 'InformationSyncReport',
  '2': const [
    const {'1': 'lastLoginTime', '3': 1, '4': 1, '5': 3, '10': 'lastLoginTime'},
    const {'1': 'pairDevices', '3': 2, '4': 3, '5': 11, '6': '.ZCApp.pb.message.cs.Device', '10': 'pairDevices'},
    const {'1': 'onlineDeviceIdVec', '3': 3, '4': 3, '5': 5, '10': 'onlineDeviceIdVec'},
  ],
};

const PairDeviceStateReport$json = const {
  '1': 'PairDeviceStateReport',
  '2': const [
    const {'1': 'deviceId', '3': 1, '4': 1, '5': 5, '10': 'deviceId'},
    const {'1': 'state', '3': 2, '4': 1, '5': 5, '10': 'state'},
  ],
};

const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'photo', '3': 5, '4': 1, '5': 3, '10': 'photo'},
    const {'1': 'email', '3': 6, '4': 1, '5': 3, '10': 'email'},
  ],
};

const UserVerityIdentityRequest$json = const {
  '1': 'UserVerityIdentityRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

const GetPairDevicesRequest$json = const {
  '1': 'GetPairDevicesRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
  ],
};

const GetPairClientListRequest$json = const {
  '1': 'GetPairClientListRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
  ],
};

const AddDevicesRequest$json = const {
  '1': 'AddDevicesRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'device', '3': 2, '4': 3, '5': 11, '6': '.ZCApp.pb.message.cs.Device', '10': 'device'},
  ],
};

const AddPairDeviceRequest$json = const {
  '1': 'AddPairDeviceRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

const DeviceHistoryDataRequest$json = const {
  '1': 'DeviceHistoryDataRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'devId', '3': 2, '4': 1, '5': 5, '10': 'devId'},
  ],
};

const UserMessageToPairDeviceRequest$json = const {
  '1': 'UserMessageToPairDeviceRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'destDeviceId', '3': 2, '4': 1, '5': 5, '10': 'destDeviceId'},
    const {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'length', '3': 4, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'byteArr', '3': 5, '4': 1, '5': 12, '10': 'byteArr'},
  ],
};

const DeviceMessageToPairUserRequest$json = const {
  '1': 'DeviceMessageToPairUserRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'destUserCtx', '3': 2, '4': 1, '5': 9, '10': 'destUserCtx'},
    const {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'length', '3': 4, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'byteArr', '3': 5, '4': 1, '5': 12, '10': 'byteArr'},
  ],
};

const DeviceVerityIdentityRequest$json = const {
  '1': 'DeviceVerityIdentityRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

const DeviceDataUploadRequest$json = const {
  '1': 'DeviceDataUploadRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Request', '10': 'request'},
    const {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

const RegisterReply$json = const {
  '1': 'RegisterReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const UserVerityIdentityReply$json = const {
  '1': 'UserVerityIdentityReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'lastLoginTime', '3': 4, '4': 1, '5': 3, '10': 'lastLoginTime'},
  ],
};

const MessageToPairClientReply$json = const {
  '1': 'MessageToPairClientReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const GetPairDevicesReply$json = const {
  '1': 'GetPairDevicesReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'device', '3': 2, '4': 3, '5': 11, '6': '.ZCApp.pb.message.cs.Device', '10': 'device'},
    const {'1': 'onLineDeviceIdVec', '3': 3, '4': 3, '5': 5, '10': 'onLineDeviceIdVec'},
  ],
};

const AddDevicesReply$json = const {
  '1': 'AddDevicesReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'deviceId', '3': 2, '4': 3, '5': 5, '10': 'deviceId'},
    const {'1': 'errorCode', '3': 3, '4': 3, '5': 5, '10': 'errorCode'},
  ],
};

const AddPairDeviceReply$json = const {
  '1': 'AddPairDeviceReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const MessageToPairDeviceReply$json = const {
  '1': 'MessageToPairDeviceReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const DeviceHistoryDataReply$json = const {
  '1': 'DeviceHistoryDataReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'device', '3': 2, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Device', '10': 'device'},
  ],
};

const DeviceVerityIdentityReply$json = const {
  '1': 'DeviceVerityIdentityReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
    const {'1': 'deviceId', '3': 2, '4': 1, '5': 5, '10': 'deviceId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'lastLoginTime', '3': 4, '4': 1, '5': 3, '10': 'lastLoginTime'},
  ],
};

const MessageToPairUserReply$json = const {
  '1': 'MessageToPairUserReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

const DeviceDataUploadReply$json = const {
  '1': 'DeviceDataUploadReply',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.ZCApp.pb.message.cs.Reply', '10': 'reply'},
  ],
};

