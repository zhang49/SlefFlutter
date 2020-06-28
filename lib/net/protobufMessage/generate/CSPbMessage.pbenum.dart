///
//  Generated code. Do not modify.
//  source: CSPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CommDataProtocol extends $pb.ProtobufEnum {
  static const CommDataProtocol EProtobuf = CommDataProtocol._(0, 'EProtobuf');
  static const CommDataProtocol EJson = CommDataProtocol._(1, 'EJson');
  static const CommDataProtocol ECustom = CommDataProtocol._(2, 'ECustom');

  static const $core.List<CommDataProtocol> values = <CommDataProtocol> [
    EProtobuf,
    EJson,
    ECustom,
  ];

  static final $core.Map<$core.int, CommDataProtocol> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommDataProtocol valueOf($core.int value) => _byValue[value];

  const CommDataProtocol._($core.int v, $core.String n) : super(v, n);
}

class CSUserRequestMessageType extends $pb.ProtobufEnum {
  static const CSUserRequestMessageType EUserRequestFillField = CSUserRequestMessageType._(0, 'EUserRequestFillField');
  static const CSUserRequestMessageType EUserRequest = CSUserRequestMessageType._(1048576, 'EUserRequest');
  static const CSUserRequestMessageType EUserVerityIdentityRequest = CSUserRequestMessageType._(1048577, 'EUserVerityIdentityRequest');
  static const CSUserRequestMessageType EUserGetPairDevicesRequest = CSUserRequestMessageType._(1048578, 'EUserGetPairDevicesRequest');
  static const CSUserRequestMessageType EUserGetPairUserListRequest = CSUserRequestMessageType._(1048579, 'EUserGetPairUserListRequest');
  static const CSUserRequestMessageType EUserMessageToPairDeviceRequest = CSUserRequestMessageType._(1048580, 'EUserMessageToPairDeviceRequest');
  static const CSUserRequestMessageType EUserAddPairDeivceRequest = CSUserRequestMessageType._(1048581, 'EUserAddPairDeivceRequest');
  static const CSUserRequestMessageType EUserAddDeivceRequest = CSUserRequestMessageType._(1048582, 'EUserAddDeivceRequest');
  static const CSUserRequestMessageType EUserDeviceHistoryDataRequest = CSUserRequestMessageType._(1048583, 'EUserDeviceHistoryDataRequest');

  static const $core.List<CSUserRequestMessageType> values = <CSUserRequestMessageType> [
    EUserRequestFillField,
    EUserRequest,
    EUserVerityIdentityRequest,
    EUserGetPairDevicesRequest,
    EUserGetPairUserListRequest,
    EUserMessageToPairDeviceRequest,
    EUserAddPairDeivceRequest,
    EUserAddDeivceRequest,
    EUserDeviceHistoryDataRequest,
  ];

  static final $core.Map<$core.int, CSUserRequestMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSUserRequestMessageType valueOf($core.int value) => _byValue[value];

  const CSUserRequestMessageType._($core.int v, $core.String n) : super(v, n);
}

class CSDeviceRequestMessageType extends $pb.ProtobufEnum {
  static const CSDeviceRequestMessageType EDeviceRequestFillField = CSDeviceRequestMessageType._(0, 'EDeviceRequestFillField');
  static const CSDeviceRequestMessageType EDeviceRequest = CSDeviceRequestMessageType._(2097152, 'EDeviceRequest');
  static const CSDeviceRequestMessageType EDeviceVerityRequest = CSDeviceRequestMessageType._(2097153, 'EDeviceVerityRequest');
  static const CSDeviceRequestMessageType EDeviceUploadData = CSDeviceRequestMessageType._(2097154, 'EDeviceUploadData');
  static const CSDeviceRequestMessageType EDeviceMessageToPairUserRequest = CSDeviceRequestMessageType._(2097155, 'EDeviceMessageToPairUserRequest');
  static const CSDeviceRequestMessageType EDeviceDataUploadRequest = CSDeviceRequestMessageType._(2097156, 'EDeviceDataUploadRequest');

  static const $core.List<CSDeviceRequestMessageType> values = <CSDeviceRequestMessageType> [
    EDeviceRequestFillField,
    EDeviceRequest,
    EDeviceVerityRequest,
    EDeviceUploadData,
    EDeviceMessageToPairUserRequest,
    EDeviceDataUploadRequest,
  ];

  static final $core.Map<$core.int, CSDeviceRequestMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSDeviceRequestMessageType valueOf($core.int value) => _byValue[value];

  const CSDeviceRequestMessageType._($core.int v, $core.String n) : super(v, n);
}

class CSUserReplyMessageType extends $pb.ProtobufEnum {
  static const CSUserReplyMessageType EUserReplyFillField = CSUserReplyMessageType._(0, 'EUserReplyFillField');
  static const CSUserReplyMessageType EUserReply = CSUserReplyMessageType._(3145728, 'EUserReply');
  static const CSUserReplyMessageType EUserVerityIdentityReply = CSUserReplyMessageType._(3145729, 'EUserVerityIdentityReply');
  static const CSUserReplyMessageType EUserGetPairDevicesReply = CSUserReplyMessageType._(3145730, 'EUserGetPairDevicesReply');
  static const CSUserReplyMessageType EUserGetPairClientListReply = CSUserReplyMessageType._(3145731, 'EUserGetPairClientListReply');
  static const CSUserReplyMessageType EUserMessageToPairDeviceReply = CSUserReplyMessageType._(3145732, 'EUserMessageToPairDeviceReply');
  static const CSUserReplyMessageType EUserAddDeivceReply = CSUserReplyMessageType._(3145733, 'EUserAddDeivceReply');
  static const CSUserReplyMessageType EUserAddPairDeivceReply = CSUserReplyMessageType._(3145734, 'EUserAddPairDeivceReply');
  static const CSUserReplyMessageType EUserDeviceHistoryDataReply = CSUserReplyMessageType._(3145735, 'EUserDeviceHistoryDataReply');
  static const CSUserReplyMessageType EUserPairDeviceStateReport = CSUserReplyMessageType._(3473408, 'EUserPairDeviceStateReport');
  static const CSUserReplyMessageType EUserInformationSyncReport = CSUserReplyMessageType._(3473409, 'EUserInformationSyncReport');
  static const CSUserReplyMessageType EUserMessageToPairUserReport = CSUserReplyMessageType._(3473410, 'EUserMessageToPairUserReport');

  static const $core.List<CSUserReplyMessageType> values = <CSUserReplyMessageType> [
    EUserReplyFillField,
    EUserReply,
    EUserVerityIdentityReply,
    EUserGetPairDevicesReply,
    EUserGetPairClientListReply,
    EUserMessageToPairDeviceReply,
    EUserAddDeivceReply,
    EUserAddPairDeivceReply,
    EUserDeviceHistoryDataReply,
    EUserPairDeviceStateReport,
    EUserInformationSyncReport,
    EUserMessageToPairUserReport,
  ];

  static final $core.Map<$core.int, CSUserReplyMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSUserReplyMessageType valueOf($core.int value) => _byValue[value];

  const CSUserReplyMessageType._($core.int v, $core.String n) : super(v, n);
}

class CSDeviceReplyMessageType extends $pb.ProtobufEnum {
  static const CSDeviceReplyMessageType EDeviceReplyFillField = CSDeviceReplyMessageType._(0, 'EDeviceReplyFillField');
  static const CSDeviceReplyMessageType EDeviceReply = CSDeviceReplyMessageType._(4194304, 'EDeviceReply');
  static const CSDeviceReplyMessageType EDeviceVerityIdentityReply = CSDeviceReplyMessageType._(4194305, 'EDeviceVerityIdentityReply');
  static const CSDeviceReplyMessageType EDeviceMessageToPairUserReply = CSDeviceReplyMessageType._(4194306, 'EDeviceMessageToPairUserReply');
  static const CSDeviceReplyMessageType EDeviceDataUploadReply = CSDeviceReplyMessageType._(4194307, 'EDeviceDataUploadReply');
  static const CSDeviceReplyMessageType EDeviceMessageToPairDeviceReport = CSDeviceReplyMessageType._(4521984, 'EDeviceMessageToPairDeviceReport');

  static const $core.List<CSDeviceReplyMessageType> values = <CSDeviceReplyMessageType> [
    EDeviceReplyFillField,
    EDeviceReply,
    EDeviceVerityIdentityReply,
    EDeviceMessageToPairUserReply,
    EDeviceDataUploadReply,
    EDeviceMessageToPairDeviceReport,
  ];

  static final $core.Map<$core.int, CSDeviceReplyMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSDeviceReplyMessageType valueOf($core.int value) => _byValue[value];

  const CSDeviceReplyMessageType._($core.int v, $core.String n) : super(v, n);
}

