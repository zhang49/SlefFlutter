///
//  Generated code. Do not modify.
//  source: CSPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'CSPbMessage.pbenum.dart';

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Request', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cmdId', $pb.PbFieldType.OU3, protoName: 'cmdId')
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request() => create();
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Request clone() => Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cmdId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cmdId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmdId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmdId() => clearField(1);
}

class Reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Reply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cmdId', $pb.PbFieldType.OU3, protoName: 'cmdId')
    ..a<$core.int>(2, 'code', $pb.PbFieldType.O3)
    ..aOS(3, 'message')
    ..hasRequiredFields = false
  ;

  Reply._() : super();
  factory Reply() => create();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Reply clone() => Reply()..mergeFromMessage(this);
  Reply copyWith(void Function(Reply) updates) => super.copyWith((message) => updates(message as Reply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reply create() => Reply._();
  Reply createEmptyInstance() => create();
  static $pb.PbList<Reply> createRepeated() => $pb.PbList<Reply>();
  @$core.pragma('dart2js:noInline')
  static Reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reply>(create);
  static Reply _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cmdId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cmdId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmdId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmdId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Device', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..aInt64(3, 'createTime', protoName: 'createTime')
    ..aInt64(4, 'lastLoginTime', protoName: 'lastLoginTime')
    ..aOS(5, 'data')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device() => create();
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Device clone() => Device()..mergeFromMessage(this);
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createTime => $_getI64(2);
  @$pb.TagNumber(3)
  set createTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastLoginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lastLoginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastLoginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastLoginTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get data => $_getSZ(4);
  @$pb.TagNumber(5)
  set data($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);
}

class ClientInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClientInfo', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, 'deviceId', $pb.PbFieldType.O3, protoName: 'deviceId')
    ..aOS(3, 'clientChannelId', protoName: 'clientChannelId')
    ..aOS(4, 'ipAddress', protoName: 'ipAddress')
    ..aInt64(5, 'loginTime', protoName: 'loginTime')
    ..a<$core.int>(6, 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ClientInfo._() : super();
  factory ClientInfo() => create();
  factory ClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ClientInfo clone() => ClientInfo()..mergeFromMessage(this);
  ClientInfo copyWith(void Function(ClientInfo) updates) => super.copyWith((message) => updates(message as ClientInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientInfo create() => ClientInfo._();
  ClientInfo createEmptyInstance() => create();
  static $pb.PbList<ClientInfo> createRepeated() => $pb.PbList<ClientInfo>();
  @$core.pragma('dart2js:noInline')
  static ClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientInfo>(create);
  static ClientInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get deviceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientChannelId => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientChannelId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientChannelId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientChannelId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ipAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set ipAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIpAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearIpAddress() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get loginTime => $_getI64(4);
  @$pb.TagNumber(5)
  set loginTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLoginTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoginTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get state => $_getIZ(5);
  @$pb.TagNumber(6)
  set state($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearState() => clearField(6);
}

class MessageToUserDevicePairReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageToUserDevicePairReport', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'sourceId', $pb.PbFieldType.O3, protoName: 'sourceId')
    ..aOS(2, 'sourceCtx', protoName: 'sourceCtx')
    ..a<$core.int>(3, 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'length', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(5, 'byteArr', $pb.PbFieldType.OY, protoName: 'byteArr')
    ..hasRequiredFields = false
  ;

  MessageToUserDevicePairReport._() : super();
  factory MessageToUserDevicePairReport() => create();
  factory MessageToUserDevicePairReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageToUserDevicePairReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MessageToUserDevicePairReport clone() => MessageToUserDevicePairReport()..mergeFromMessage(this);
  MessageToUserDevicePairReport copyWith(void Function(MessageToUserDevicePairReport) updates) => super.copyWith((message) => updates(message as MessageToUserDevicePairReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageToUserDevicePairReport create() => MessageToUserDevicePairReport._();
  MessageToUserDevicePairReport createEmptyInstance() => create();
  static $pb.PbList<MessageToUserDevicePairReport> createRepeated() => $pb.PbList<MessageToUserDevicePairReport>();
  @$core.pragma('dart2js:noInline')
  static MessageToUserDevicePairReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageToUserDevicePairReport>(create);
  static MessageToUserDevicePairReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sourceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sourceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceCtx => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceCtx($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSourceCtx() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceCtx() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get length => $_getIZ(3);
  @$pb.TagNumber(4)
  set length($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get byteArr => $_getN(4);
  @$pb.TagNumber(5)
  set byteArr($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasByteArr() => $_has(4);
  @$pb.TagNumber(5)
  void clearByteArr() => clearField(5);
}

class InformationSyncReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InformationSyncReport', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aInt64(1, 'lastLoginTime', protoName: 'lastLoginTime')
    ..pc<Device>(2, 'pairDevices', $pb.PbFieldType.PM, protoName: 'pairDevices', subBuilder: Device.create)
    ..p<$core.int>(3, 'onlineDeviceIdVec', $pb.PbFieldType.P3, protoName: 'onlineDeviceIdVec')
    ..hasRequiredFields = false
  ;

  InformationSyncReport._() : super();
  factory InformationSyncReport() => create();
  factory InformationSyncReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InformationSyncReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InformationSyncReport clone() => InformationSyncReport()..mergeFromMessage(this);
  InformationSyncReport copyWith(void Function(InformationSyncReport) updates) => super.copyWith((message) => updates(message as InformationSyncReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InformationSyncReport create() => InformationSyncReport._();
  InformationSyncReport createEmptyInstance() => create();
  static $pb.PbList<InformationSyncReport> createRepeated() => $pb.PbList<InformationSyncReport>();
  @$core.pragma('dart2js:noInline')
  static InformationSyncReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InformationSyncReport>(create);
  static InformationSyncReport _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lastLoginTime => $_getI64(0);
  @$pb.TagNumber(1)
  set lastLoginTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastLoginTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastLoginTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Device> get pairDevices => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get onlineDeviceIdVec => $_getList(2);
}

class PairDeviceStateReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PairDeviceStateReport', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..a<$core.int>(1, 'deviceId', $pb.PbFieldType.O3, protoName: 'deviceId')
    ..a<$core.int>(2, 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PairDeviceStateReport._() : super();
  factory PairDeviceStateReport() => create();
  factory PairDeviceStateReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairDeviceStateReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PairDeviceStateReport clone() => PairDeviceStateReport()..mergeFromMessage(this);
  PairDeviceStateReport copyWith(void Function(PairDeviceStateReport) updates) => super.copyWith((message) => updates(message as PairDeviceStateReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairDeviceStateReport create() => PairDeviceStateReport._();
  PairDeviceStateReport createEmptyInstance() => create();
  static $pb.PbList<PairDeviceStateReport> createRepeated() => $pb.PbList<PairDeviceStateReport>();
  @$core.pragma('dart2js:noInline')
  static PairDeviceStateReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairDeviceStateReport>(create);
  static PairDeviceStateReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get deviceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get state => $_getIZ(1);
  @$pb.TagNumber(2)
  set state($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..aOS(2, 'account')
    ..aOS(3, 'password')
    ..aOS(4, 'name')
    ..aInt64(5, 'photo')
    ..aInt64(6, 'email')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest() => create();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(2)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get photo => $_getI64(4);
  @$pb.TagNumber(5)
  set photo($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhoto() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhoto() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get email => $_getI64(5);
  @$pb.TagNumber(6)
  set email($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);
}

class UserVerityIdentityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserVerityIdentityRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..aOS(2, 'account')
    ..aOS(3, 'password')
    ..hasRequiredFields = false
  ;

  UserVerityIdentityRequest._() : super();
  factory UserVerityIdentityRequest() => create();
  factory UserVerityIdentityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserVerityIdentityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserVerityIdentityRequest clone() => UserVerityIdentityRequest()..mergeFromMessage(this);
  UserVerityIdentityRequest copyWith(void Function(UserVerityIdentityRequest) updates) => super.copyWith((message) => updates(message as UserVerityIdentityRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserVerityIdentityRequest create() => UserVerityIdentityRequest._();
  UserVerityIdentityRequest createEmptyInstance() => create();
  static $pb.PbList<UserVerityIdentityRequest> createRepeated() => $pb.PbList<UserVerityIdentityRequest>();
  @$core.pragma('dart2js:noInline')
  static UserVerityIdentityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserVerityIdentityRequest>(create);
  static UserVerityIdentityRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(2)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class GetPairDevicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPairDevicesRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  GetPairDevicesRequest._() : super();
  factory GetPairDevicesRequest() => create();
  factory GetPairDevicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPairDevicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPairDevicesRequest clone() => GetPairDevicesRequest()..mergeFromMessage(this);
  GetPairDevicesRequest copyWith(void Function(GetPairDevicesRequest) updates) => super.copyWith((message) => updates(message as GetPairDevicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPairDevicesRequest create() => GetPairDevicesRequest._();
  GetPairDevicesRequest createEmptyInstance() => create();
  static $pb.PbList<GetPairDevicesRequest> createRepeated() => $pb.PbList<GetPairDevicesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPairDevicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPairDevicesRequest>(create);
  static GetPairDevicesRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);
}

class GetPairClientListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPairClientListRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  GetPairClientListRequest._() : super();
  factory GetPairClientListRequest() => create();
  factory GetPairClientListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPairClientListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPairClientListRequest clone() => GetPairClientListRequest()..mergeFromMessage(this);
  GetPairClientListRequest copyWith(void Function(GetPairClientListRequest) updates) => super.copyWith((message) => updates(message as GetPairClientListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPairClientListRequest create() => GetPairClientListRequest._();
  GetPairClientListRequest createEmptyInstance() => create();
  static $pb.PbList<GetPairClientListRequest> createRepeated() => $pb.PbList<GetPairClientListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPairClientListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPairClientListRequest>(create);
  static GetPairClientListRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);
}

class AddDevicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddDevicesRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..pc<Device>(2, 'device', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..hasRequiredFields = false
  ;

  AddDevicesRequest._() : super();
  factory AddDevicesRequest() => create();
  factory AddDevicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDevicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddDevicesRequest clone() => AddDevicesRequest()..mergeFromMessage(this);
  AddDevicesRequest copyWith(void Function(AddDevicesRequest) updates) => super.copyWith((message) => updates(message as AddDevicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddDevicesRequest create() => AddDevicesRequest._();
  AddDevicesRequest createEmptyInstance() => create();
  static $pb.PbList<AddDevicesRequest> createRepeated() => $pb.PbList<AddDevicesRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDevicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDevicesRequest>(create);
  static AddDevicesRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Device> get device => $_getList(1);
}

class AddPairDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddPairDeviceRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..a<$core.int>(2, 'id', $pb.PbFieldType.O3)
    ..aOS(3, 'name')
    ..hasRequiredFields = false
  ;

  AddPairDeviceRequest._() : super();
  factory AddPairDeviceRequest() => create();
  factory AddPairDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPairDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddPairDeviceRequest clone() => AddPairDeviceRequest()..mergeFromMessage(this);
  AddPairDeviceRequest copyWith(void Function(AddPairDeviceRequest) updates) => super.copyWith((message) => updates(message as AddPairDeviceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPairDeviceRequest create() => AddPairDeviceRequest._();
  AddPairDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<AddPairDeviceRequest> createRepeated() => $pb.PbList<AddPairDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddPairDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPairDeviceRequest>(create);
  static AddPairDeviceRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class DeviceHistoryDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceHistoryDataRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..a<$core.int>(2, 'devId', $pb.PbFieldType.O3, protoName: 'devId')
    ..hasRequiredFields = false
  ;

  DeviceHistoryDataRequest._() : super();
  factory DeviceHistoryDataRequest() => create();
  factory DeviceHistoryDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceHistoryDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceHistoryDataRequest clone() => DeviceHistoryDataRequest()..mergeFromMessage(this);
  DeviceHistoryDataRequest copyWith(void Function(DeviceHistoryDataRequest) updates) => super.copyWith((message) => updates(message as DeviceHistoryDataRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceHistoryDataRequest create() => DeviceHistoryDataRequest._();
  DeviceHistoryDataRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceHistoryDataRequest> createRepeated() => $pb.PbList<DeviceHistoryDataRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceHistoryDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceHistoryDataRequest>(create);
  static DeviceHistoryDataRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get devId => $_getIZ(1);
  @$pb.TagNumber(2)
  set devId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevId() => clearField(2);
}

class UserMessageToPairDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserMessageToPairDeviceRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..a<$core.int>(2, 'destDeviceId', $pb.PbFieldType.O3, protoName: 'destDeviceId')
    ..a<$core.int>(3, 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'length', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(5, 'byteArr', $pb.PbFieldType.OY, protoName: 'byteArr')
    ..hasRequiredFields = false
  ;

  UserMessageToPairDeviceRequest._() : super();
  factory UserMessageToPairDeviceRequest() => create();
  factory UserMessageToPairDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserMessageToPairDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserMessageToPairDeviceRequest clone() => UserMessageToPairDeviceRequest()..mergeFromMessage(this);
  UserMessageToPairDeviceRequest copyWith(void Function(UserMessageToPairDeviceRequest) updates) => super.copyWith((message) => updates(message as UserMessageToPairDeviceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserMessageToPairDeviceRequest create() => UserMessageToPairDeviceRequest._();
  UserMessageToPairDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<UserMessageToPairDeviceRequest> createRepeated() => $pb.PbList<UserMessageToPairDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static UserMessageToPairDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserMessageToPairDeviceRequest>(create);
  static UserMessageToPairDeviceRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get destDeviceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set destDeviceId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDestDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestDeviceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get length => $_getIZ(3);
  @$pb.TagNumber(4)
  set length($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get byteArr => $_getN(4);
  @$pb.TagNumber(5)
  set byteArr($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasByteArr() => $_has(4);
  @$pb.TagNumber(5)
  void clearByteArr() => clearField(5);
}

class DeviceMessageToPairUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceMessageToPairUserRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..aOS(2, 'destUserCtx', protoName: 'destUserCtx')
    ..a<$core.int>(3, 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'length', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(5, 'byteArr', $pb.PbFieldType.OY, protoName: 'byteArr')
    ..hasRequiredFields = false
  ;

  DeviceMessageToPairUserRequest._() : super();
  factory DeviceMessageToPairUserRequest() => create();
  factory DeviceMessageToPairUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceMessageToPairUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceMessageToPairUserRequest clone() => DeviceMessageToPairUserRequest()..mergeFromMessage(this);
  DeviceMessageToPairUserRequest copyWith(void Function(DeviceMessageToPairUserRequest) updates) => super.copyWith((message) => updates(message as DeviceMessageToPairUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceMessageToPairUserRequest create() => DeviceMessageToPairUserRequest._();
  DeviceMessageToPairUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceMessageToPairUserRequest> createRepeated() => $pb.PbList<DeviceMessageToPairUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceMessageToPairUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceMessageToPairUserRequest>(create);
  static DeviceMessageToPairUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get destUserCtx => $_getSZ(1);
  @$pb.TagNumber(2)
  set destUserCtx($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDestUserCtx() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestUserCtx() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get length => $_getIZ(3);
  @$pb.TagNumber(4)
  set length($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get byteArr => $_getN(4);
  @$pb.TagNumber(5)
  set byteArr($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasByteArr() => $_has(4);
  @$pb.TagNumber(5)
  void clearByteArr() => clearField(5);
}

class DeviceVerityIdentityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceVerityIdentityRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..aOS(2, 'name')
    ..aOS(3, 'password')
    ..hasRequiredFields = false
  ;

  DeviceVerityIdentityRequest._() : super();
  factory DeviceVerityIdentityRequest() => create();
  factory DeviceVerityIdentityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceVerityIdentityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceVerityIdentityRequest clone() => DeviceVerityIdentityRequest()..mergeFromMessage(this);
  DeviceVerityIdentityRequest copyWith(void Function(DeviceVerityIdentityRequest) updates) => super.copyWith((message) => updates(message as DeviceVerityIdentityRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceVerityIdentityRequest create() => DeviceVerityIdentityRequest._();
  DeviceVerityIdentityRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceVerityIdentityRequest> createRepeated() => $pb.PbList<DeviceVerityIdentityRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceVerityIdentityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceVerityIdentityRequest>(create);
  static DeviceVerityIdentityRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class DeviceDataUploadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceDataUploadRequest', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Request>(1, 'request', subBuilder: Request.create)
    ..aOS(2, 'data')
    ..hasRequiredFields = false
  ;

  DeviceDataUploadRequest._() : super();
  factory DeviceDataUploadRequest() => create();
  factory DeviceDataUploadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceDataUploadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceDataUploadRequest clone() => DeviceDataUploadRequest()..mergeFromMessage(this);
  DeviceDataUploadRequest copyWith(void Function(DeviceDataUploadRequest) updates) => super.copyWith((message) => updates(message as DeviceDataUploadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceDataUploadRequest create() => DeviceDataUploadRequest._();
  DeviceDataUploadRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceDataUploadRequest> createRepeated() => $pb.PbList<DeviceDataUploadRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceDataUploadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceDataUploadRequest>(create);
  static DeviceDataUploadRequest _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class RegisterReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  RegisterReply._() : super();
  factory RegisterReply() => create();
  factory RegisterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterReply clone() => RegisterReply()..mergeFromMessage(this);
  RegisterReply copyWith(void Function(RegisterReply) updates) => super.copyWith((message) => updates(message as RegisterReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterReply create() => RegisterReply._();
  RegisterReply createEmptyInstance() => create();
  static $pb.PbList<RegisterReply> createRepeated() => $pb.PbList<RegisterReply>();
  @$core.pragma('dart2js:noInline')
  static RegisterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterReply>(create);
  static RegisterReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

class UserVerityIdentityReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserVerityIdentityReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..a<$core.int>(2, 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(3, 'name')
    ..aInt64(4, 'lastLoginTime', protoName: 'lastLoginTime')
    ..hasRequiredFields = false
  ;

  UserVerityIdentityReply._() : super();
  factory UserVerityIdentityReply() => create();
  factory UserVerityIdentityReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserVerityIdentityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserVerityIdentityReply clone() => UserVerityIdentityReply()..mergeFromMessage(this);
  UserVerityIdentityReply copyWith(void Function(UserVerityIdentityReply) updates) => super.copyWith((message) => updates(message as UserVerityIdentityReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserVerityIdentityReply create() => UserVerityIdentityReply._();
  UserVerityIdentityReply createEmptyInstance() => create();
  static $pb.PbList<UserVerityIdentityReply> createRepeated() => $pb.PbList<UserVerityIdentityReply>();
  @$core.pragma('dart2js:noInline')
  static UserVerityIdentityReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserVerityIdentityReply>(create);
  static UserVerityIdentityReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastLoginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lastLoginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastLoginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastLoginTime() => clearField(4);
}

class MessageToPairClientReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageToPairClientReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  MessageToPairClientReply._() : super();
  factory MessageToPairClientReply() => create();
  factory MessageToPairClientReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageToPairClientReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MessageToPairClientReply clone() => MessageToPairClientReply()..mergeFromMessage(this);
  MessageToPairClientReply copyWith(void Function(MessageToPairClientReply) updates) => super.copyWith((message) => updates(message as MessageToPairClientReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageToPairClientReply create() => MessageToPairClientReply._();
  MessageToPairClientReply createEmptyInstance() => create();
  static $pb.PbList<MessageToPairClientReply> createRepeated() => $pb.PbList<MessageToPairClientReply>();
  @$core.pragma('dart2js:noInline')
  static MessageToPairClientReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageToPairClientReply>(create);
  static MessageToPairClientReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

class GetPairDevicesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPairDevicesReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..pc<Device>(2, 'device', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..p<$core.int>(3, 'onLineDeviceIdVec', $pb.PbFieldType.P3, protoName: 'onLineDeviceIdVec')
    ..hasRequiredFields = false
  ;

  GetPairDevicesReply._() : super();
  factory GetPairDevicesReply() => create();
  factory GetPairDevicesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPairDevicesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPairDevicesReply clone() => GetPairDevicesReply()..mergeFromMessage(this);
  GetPairDevicesReply copyWith(void Function(GetPairDevicesReply) updates) => super.copyWith((message) => updates(message as GetPairDevicesReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPairDevicesReply create() => GetPairDevicesReply._();
  GetPairDevicesReply createEmptyInstance() => create();
  static $pb.PbList<GetPairDevicesReply> createRepeated() => $pb.PbList<GetPairDevicesReply>();
  @$core.pragma('dart2js:noInline')
  static GetPairDevicesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPairDevicesReply>(create);
  static GetPairDevicesReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Device> get device => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get onLineDeviceIdVec => $_getList(2);
}

class AddDevicesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddDevicesReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..p<$core.int>(2, 'deviceId', $pb.PbFieldType.P3, protoName: 'deviceId')
    ..p<$core.int>(3, 'errorCode', $pb.PbFieldType.P3, protoName: 'errorCode')
    ..hasRequiredFields = false
  ;

  AddDevicesReply._() : super();
  factory AddDevicesReply() => create();
  factory AddDevicesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDevicesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddDevicesReply clone() => AddDevicesReply()..mergeFromMessage(this);
  AddDevicesReply copyWith(void Function(AddDevicesReply) updates) => super.copyWith((message) => updates(message as AddDevicesReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddDevicesReply create() => AddDevicesReply._();
  AddDevicesReply createEmptyInstance() => create();
  static $pb.PbList<AddDevicesReply> createRepeated() => $pb.PbList<AddDevicesReply>();
  @$core.pragma('dart2js:noInline')
  static AddDevicesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDevicesReply>(create);
  static AddDevicesReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deviceId => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get errorCode => $_getList(2);
}

class AddPairDeviceReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddPairDeviceReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  AddPairDeviceReply._() : super();
  factory AddPairDeviceReply() => create();
  factory AddPairDeviceReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPairDeviceReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddPairDeviceReply clone() => AddPairDeviceReply()..mergeFromMessage(this);
  AddPairDeviceReply copyWith(void Function(AddPairDeviceReply) updates) => super.copyWith((message) => updates(message as AddPairDeviceReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPairDeviceReply create() => AddPairDeviceReply._();
  AddPairDeviceReply createEmptyInstance() => create();
  static $pb.PbList<AddPairDeviceReply> createRepeated() => $pb.PbList<AddPairDeviceReply>();
  @$core.pragma('dart2js:noInline')
  static AddPairDeviceReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPairDeviceReply>(create);
  static AddPairDeviceReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

class MessageToPairDeviceReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageToPairDeviceReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  MessageToPairDeviceReply._() : super();
  factory MessageToPairDeviceReply() => create();
  factory MessageToPairDeviceReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageToPairDeviceReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MessageToPairDeviceReply clone() => MessageToPairDeviceReply()..mergeFromMessage(this);
  MessageToPairDeviceReply copyWith(void Function(MessageToPairDeviceReply) updates) => super.copyWith((message) => updates(message as MessageToPairDeviceReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageToPairDeviceReply create() => MessageToPairDeviceReply._();
  MessageToPairDeviceReply createEmptyInstance() => create();
  static $pb.PbList<MessageToPairDeviceReply> createRepeated() => $pb.PbList<MessageToPairDeviceReply>();
  @$core.pragma('dart2js:noInline')
  static MessageToPairDeviceReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageToPairDeviceReply>(create);
  static MessageToPairDeviceReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

class DeviceHistoryDataReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceHistoryDataReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..aOM<Device>(2, 'device', subBuilder: Device.create)
    ..hasRequiredFields = false
  ;

  DeviceHistoryDataReply._() : super();
  factory DeviceHistoryDataReply() => create();
  factory DeviceHistoryDataReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceHistoryDataReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceHistoryDataReply clone() => DeviceHistoryDataReply()..mergeFromMessage(this);
  DeviceHistoryDataReply copyWith(void Function(DeviceHistoryDataReply) updates) => super.copyWith((message) => updates(message as DeviceHistoryDataReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceHistoryDataReply create() => DeviceHistoryDataReply._();
  DeviceHistoryDataReply createEmptyInstance() => create();
  static $pb.PbList<DeviceHistoryDataReply> createRepeated() => $pb.PbList<DeviceHistoryDataReply>();
  @$core.pragma('dart2js:noInline')
  static DeviceHistoryDataReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceHistoryDataReply>(create);
  static DeviceHistoryDataReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  Device get device => $_getN(1);
  @$pb.TagNumber(2)
  set device(Device v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => clearField(2);
  @$pb.TagNumber(2)
  Device ensureDevice() => $_ensure(1);
}

class DeviceVerityIdentityReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceVerityIdentityReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..a<$core.int>(2, 'deviceId', $pb.PbFieldType.O3, protoName: 'deviceId')
    ..aOS(3, 'name')
    ..aInt64(4, 'lastLoginTime', protoName: 'lastLoginTime')
    ..hasRequiredFields = false
  ;

  DeviceVerityIdentityReply._() : super();
  factory DeviceVerityIdentityReply() => create();
  factory DeviceVerityIdentityReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceVerityIdentityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceVerityIdentityReply clone() => DeviceVerityIdentityReply()..mergeFromMessage(this);
  DeviceVerityIdentityReply copyWith(void Function(DeviceVerityIdentityReply) updates) => super.copyWith((message) => updates(message as DeviceVerityIdentityReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceVerityIdentityReply create() => DeviceVerityIdentityReply._();
  DeviceVerityIdentityReply createEmptyInstance() => create();
  static $pb.PbList<DeviceVerityIdentityReply> createRepeated() => $pb.PbList<DeviceVerityIdentityReply>();
  @$core.pragma('dart2js:noInline')
  static DeviceVerityIdentityReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceVerityIdentityReply>(create);
  static DeviceVerityIdentityReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get deviceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastLoginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lastLoginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastLoginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastLoginTime() => clearField(4);
}

class MessageToPairUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MessageToPairUserReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  MessageToPairUserReply._() : super();
  factory MessageToPairUserReply() => create();
  factory MessageToPairUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageToPairUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MessageToPairUserReply clone() => MessageToPairUserReply()..mergeFromMessage(this);
  MessageToPairUserReply copyWith(void Function(MessageToPairUserReply) updates) => super.copyWith((message) => updates(message as MessageToPairUserReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageToPairUserReply create() => MessageToPairUserReply._();
  MessageToPairUserReply createEmptyInstance() => create();
  static $pb.PbList<MessageToPairUserReply> createRepeated() => $pb.PbList<MessageToPairUserReply>();
  @$core.pragma('dart2js:noInline')
  static MessageToPairUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageToPairUserReply>(create);
  static MessageToPairUserReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

class DeviceDataUploadReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceDataUploadReply', package: const $pb.PackageName('ZCApp.pb.message.cs'), createEmptyInstance: create)
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  DeviceDataUploadReply._() : super();
  factory DeviceDataUploadReply() => create();
  factory DeviceDataUploadReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceDataUploadReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceDataUploadReply clone() => DeviceDataUploadReply()..mergeFromMessage(this);
  DeviceDataUploadReply copyWith(void Function(DeviceDataUploadReply) updates) => super.copyWith((message) => updates(message as DeviceDataUploadReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceDataUploadReply create() => DeviceDataUploadReply._();
  DeviceDataUploadReply createEmptyInstance() => create();
  static $pb.PbList<DeviceDataUploadReply> createRepeated() => $pb.PbList<DeviceDataUploadReply>();
  @$core.pragma('dart2js:noInline')
  static DeviceDataUploadReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceDataUploadReply>(create);
  static DeviceDataUploadReply _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

