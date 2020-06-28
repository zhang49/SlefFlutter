///
//  Generated code. Do not modify.
//  source: CSCPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CSCRequestMessageType extends $pb.ProtobufEnum {
  static const CSCRequestMessageType EC2CRequestFillField = CSCRequestMessageType._(0, 'EC2CRequestFillField');
  static const CSCRequestMessageType EC2CRequest = CSCRequestMessageType._(1048576, 'EC2CRequest');
  static const CSCRequestMessageType EC2CCaptureScreenStartRequest = CSCRequestMessageType._(1048577, 'EC2CCaptureScreenStartRequest');
  static const CSCRequestMessageType EC2CCaptureScreenStopRequest = CSCRequestMessageType._(1048578, 'EC2CCaptureScreenStopRequest');
  static const CSCRequestMessageType EC2CPcInformationRequest = CSCRequestMessageType._(1048579, 'EC2CPcInformationRequest');

  static const $core.List<CSCRequestMessageType> values = <CSCRequestMessageType> [
    EC2CRequestFillField,
    EC2CRequest,
    EC2CCaptureScreenStartRequest,
    EC2CCaptureScreenStopRequest,
    EC2CPcInformationRequest,
  ];

  static final $core.Map<$core.int, CSCRequestMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSCRequestMessageType valueOf($core.int value) => _byValue[value];

  const CSCRequestMessageType._($core.int v, $core.String n) : super(v, n);
}

class CSCReplyMessageType extends $pb.ProtobufEnum {
  static const CSCReplyMessageType EC2CReplyFillField = CSCReplyMessageType._(0, 'EC2CReplyFillField');
  static const CSCReplyMessageType EC2CReply = CSCReplyMessageType._(2097152, 'EC2CReply');
  static const CSCReplyMessageType EC2CGetPairClientListReply = CSCReplyMessageType._(2097153, 'EC2CGetPairClientListReply');
  static const CSCReplyMessageType EC2CCaptureScreenStartReply = CSCReplyMessageType._(2097154, 'EC2CCaptureScreenStartReply');
  static const CSCReplyMessageType EC2CCaptureScreenStopReply = CSCReplyMessageType._(2097155, 'EC2CCaptureScreenStopReply');
  static const CSCReplyMessageType EC2CPcInformationReply = CSCReplyMessageType._(2097156, 'EC2CPcInformationReply');
  static const CSCReplyMessageType EC2CMouseReport = CSCReplyMessageType._(2424832, 'EC2CMouseReport');
  static const CSCReplyMessageType EC2CKeyboardReport = CSCReplyMessageType._(2424833, 'EC2CKeyboardReport');
  static const CSCReplyMessageType EC2CScreenImageBufferReport = CSCReplyMessageType._(2424834, 'EC2CScreenImageBufferReport');

  static const $core.List<CSCReplyMessageType> values = <CSCReplyMessageType> [
    EC2CReplyFillField,
    EC2CReply,
    EC2CGetPairClientListReply,
    EC2CCaptureScreenStartReply,
    EC2CCaptureScreenStopReply,
    EC2CPcInformationReply,
    EC2CMouseReport,
    EC2CKeyboardReport,
    EC2CScreenImageBufferReport,
  ];

  static final $core.Map<$core.int, CSCReplyMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CSCReplyMessageType valueOf($core.int value) => _byValue[value];

  const CSCReplyMessageType._($core.int v, $core.String n) : super(v, n);
}

