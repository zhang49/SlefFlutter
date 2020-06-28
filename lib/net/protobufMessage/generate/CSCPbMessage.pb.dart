///
//  Generated code. Do not modify.
//  source: CSCPbMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CSPbMessage.pb.dart' as $0;

export 'CSCPbMessage.pbenum.dart';

class CaptureScreenStartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CaptureScreenStartRequest', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'y', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'height', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'quality', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CaptureScreenStartRequest._() : super();
  factory CaptureScreenStartRequest() => create();
  factory CaptureScreenStartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureScreenStartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CaptureScreenStartRequest clone() => CaptureScreenStartRequest()..mergeFromMessage(this);
  CaptureScreenStartRequest copyWith(void Function(CaptureScreenStartRequest) updates) => super.copyWith((message) => updates(message as CaptureScreenStartRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStartRequest create() => CaptureScreenStartRequest._();
  CaptureScreenStartRequest createEmptyInstance() => create();
  static $pb.PbList<CaptureScreenStartRequest> createRepeated() => $pb.PbList<CaptureScreenStartRequest>();
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureScreenStartRequest>(create);
  static CaptureScreenStartRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get quality => $_getIZ(4);
  @$pb.TagNumber(5)
  set quality($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQuality() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuality() => clearField(5);
}

class MouseReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MouseReport', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'y', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'btn', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'wheelPosition', $pb.PbFieldType.O3, protoName: 'wheelPosition')
    ..hasRequiredFields = false
  ;

  MouseReport._() : super();
  factory MouseReport() => create();
  factory MouseReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MouseReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MouseReport clone() => MouseReport()..mergeFromMessage(this);
  MouseReport copyWith(void Function(MouseReport) updates) => super.copyWith((message) => updates(message as MouseReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MouseReport create() => MouseReport._();
  MouseReport createEmptyInstance() => create();
  static $pb.PbList<MouseReport> createRepeated() => $pb.PbList<MouseReport>();
  @$core.pragma('dart2js:noInline')
  static MouseReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MouseReport>(create);
  static MouseReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get btn => $_getIZ(2);
  @$pb.TagNumber(3)
  set btn($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBtn() => $_has(2);
  @$pb.TagNumber(3)
  void clearBtn() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get wheelPosition => $_getIZ(3);
  @$pb.TagNumber(4)
  set wheelPosition($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWheelPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearWheelPosition() => clearField(4);
}

class KeyboardReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyboardReport', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'shiftKeyFlags', $pb.PbFieldType.O3, protoName: 'shiftKeyFlags')
    ..p<$core.int>(2, 'keyCodes', $pb.PbFieldType.P3, protoName: 'keyCodes')
    ..hasRequiredFields = false
  ;

  KeyboardReport._() : super();
  factory KeyboardReport() => create();
  factory KeyboardReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyboardReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KeyboardReport clone() => KeyboardReport()..mergeFromMessage(this);
  KeyboardReport copyWith(void Function(KeyboardReport) updates) => super.copyWith((message) => updates(message as KeyboardReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyboardReport create() => KeyboardReport._();
  KeyboardReport createEmptyInstance() => create();
  static $pb.PbList<KeyboardReport> createRepeated() => $pb.PbList<KeyboardReport>();
  @$core.pragma('dart2js:noInline')
  static KeyboardReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyboardReport>(create);
  static KeyboardReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get shiftKeyFlags => $_getIZ(0);
  @$pb.TagNumber(1)
  set shiftKeyFlags($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShiftKeyFlags() => $_has(0);
  @$pb.TagNumber(1)
  void clearShiftKeyFlags() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get keyCodes => $_getList(1);
}

class ScreenImageBufferReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ScreenImageBufferReport', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bitMap', $pb.PbFieldType.OY, protoName: 'bitMap')
    ..hasRequiredFields = false
  ;

  ScreenImageBufferReport._() : super();
  factory ScreenImageBufferReport() => create();
  factory ScreenImageBufferReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScreenImageBufferReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ScreenImageBufferReport clone() => ScreenImageBufferReport()..mergeFromMessage(this);
  ScreenImageBufferReport copyWith(void Function(ScreenImageBufferReport) updates) => super.copyWith((message) => updates(message as ScreenImageBufferReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScreenImageBufferReport create() => ScreenImageBufferReport._();
  ScreenImageBufferReport createEmptyInstance() => create();
  static $pb.PbList<ScreenImageBufferReport> createRepeated() => $pb.PbList<ScreenImageBufferReport>();
  @$core.pragma('dart2js:noInline')
  static ScreenImageBufferReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScreenImageBufferReport>(create);
  static ScreenImageBufferReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bitMap => $_getN(0);
  @$pb.TagNumber(1)
  set bitMap($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBitMap() => $_has(0);
  @$pb.TagNumber(1)
  void clearBitMap() => clearField(1);
}

class CaptureScreenStartReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CaptureScreenStartReply', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..aOM<$0.Reply>(1, 'reply', subBuilder: $0.Reply.create)
    ..hasRequiredFields = false
  ;

  CaptureScreenStartReply._() : super();
  factory CaptureScreenStartReply() => create();
  factory CaptureScreenStartReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureScreenStartReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CaptureScreenStartReply clone() => CaptureScreenStartReply()..mergeFromMessage(this);
  CaptureScreenStartReply copyWith(void Function(CaptureScreenStartReply) updates) => super.copyWith((message) => updates(message as CaptureScreenStartReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStartReply create() => CaptureScreenStartReply._();
  CaptureScreenStartReply createEmptyInstance() => create();
  static $pb.PbList<CaptureScreenStartReply> createRepeated() => $pb.PbList<CaptureScreenStartReply>();
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStartReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureScreenStartReply>(create);
  static CaptureScreenStartReply _defaultInstance;

  @$pb.TagNumber(1)
  $0.Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply($0.Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  $0.Reply ensureReply() => $_ensure(0);
}

class CaptureScreenStopReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CaptureScreenStopReply', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..aOM<$0.Reply>(1, 'reply', subBuilder: $0.Reply.create)
    ..hasRequiredFields = false
  ;

  CaptureScreenStopReply._() : super();
  factory CaptureScreenStopReply() => create();
  factory CaptureScreenStopReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureScreenStopReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CaptureScreenStopReply clone() => CaptureScreenStopReply()..mergeFromMessage(this);
  CaptureScreenStopReply copyWith(void Function(CaptureScreenStopReply) updates) => super.copyWith((message) => updates(message as CaptureScreenStopReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStopReply create() => CaptureScreenStopReply._();
  CaptureScreenStopReply createEmptyInstance() => create();
  static $pb.PbList<CaptureScreenStopReply> createRepeated() => $pb.PbList<CaptureScreenStopReply>();
  @$core.pragma('dart2js:noInline')
  static CaptureScreenStopReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureScreenStopReply>(create);
  static CaptureScreenStopReply _defaultInstance;

  @$pb.TagNumber(1)
  $0.Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply($0.Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  $0.Reply ensureReply() => $_ensure(0);
}

class PcInfoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PcInfoReply', package: const $pb.PackageName('ZCApp.pb.message.csc'), createEmptyInstance: create)
    ..aOM<$0.Reply>(1, 'reply', subBuilder: $0.Reply.create)
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PcInfoReply._() : super();
  factory PcInfoReply() => create();
  factory PcInfoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PcInfoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PcInfoReply clone() => PcInfoReply()..mergeFromMessage(this);
  PcInfoReply copyWith(void Function(PcInfoReply) updates) => super.copyWith((message) => updates(message as PcInfoReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PcInfoReply create() => PcInfoReply._();
  PcInfoReply createEmptyInstance() => create();
  static $pb.PbList<PcInfoReply> createRepeated() => $pb.PbList<PcInfoReply>();
  @$core.pragma('dart2js:noInline')
  static PcInfoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PcInfoReply>(create);
  static PcInfoReply _defaultInstance;

  @$pb.TagNumber(1)
  $0.Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply($0.Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  $0.Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

