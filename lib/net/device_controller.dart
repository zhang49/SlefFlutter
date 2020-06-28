import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutterapp/net/RecvCallBack.dart';
import 'package:flutterapp/net/client_data_collection.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSCPbMessage.pb.dart'
    as $csc;
import 'package:flutterapp/net/protobufMessage/generate/CSPbMessage.pb.dart'
    as $cs;
import 'package:flutterapp/net/comm_method.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:flutter_des/flutter_des.dart';

class DeviceController {
  static String selfDevName = 'photo';


  static Function sendPbPackFunc;
  static List<RecvCallBack> RecvCallBacks = new List<RecvCallBack>();
  static List<RecvCallBack> cscRecvCallBacks = new List<RecvCallBack>();

  static int commanId = 0;

  static int getCommandId() {
    commanId++;
    return commanId;
  }

  static void addListener(RecvCallBack d) {
    RecvCallBacks.add(d);
  }

  static void removeListener(RecvCallBack d) {
    RecvCallBacks.remove(d);
  }

  DeviceController() {}

  void recvMessage(int type, List<int> data) {
    bool isCSCMessage = false;
    switch ($cs.CSDeviceReplyMessageType.valueOf(type)) {
      case $cs.CSDeviceReplyMessageType.EDeviceVerityIdentityReply:
        $cs.DeviceVerityIdentityReply reply =
            $cs.DeviceVerityIdentityReply.fromBuffer(data);
        if (reply.reply.code == 0) {
          DataCollection().selfDevice.netState = 1;
        }
        break;
      case $cs.CSDeviceReplyMessageType.EDeviceMessageToPairDeviceReport:
        isCSCMessage = true;
        RecvUserReport($cs.MessageToUserDevicePairReport.fromBuffer(data));
        break;
    }

    RecvCallBacks.forEach((element) {
      if (!isCSCMessage &&
          element.csRecv != null &&
          (element.type == -1 || element.type == type)) {
        if (type == $cs.CSUserReplyMessageType.EUserMessageToPairUserReport) {}
        element.csRecv(type, DataCollection().user);
      }
    });
  }

  static void RecvUserReport($cs.MessageToUserDevicePairReport devReport) {
    int devId = devReport.sourceId;
    String devCtx = devReport.sourceCtx;
    $csc.CSCRequestMessageType type =
        $csc.CSCRequestMessageType.valueOf(devReport.type);
    List<int> data = devReport.byteArr; //data 可能为空
    int length = devReport.length;
    Object cbData = null;
    switch (type) {
      case $csc.CSCRequestMessageType.EC2CRequest:
        break;
    }
    RecvCallBacks.forEach((element) {
      if (element.cscRecv != null &&
          (element.type == -1 || element.type == type)) {
        if (type == $cs.CSUserReplyMessageType.EUserMessageToPairUserReport) {}
        element.cscRecv(devReport.type, devId, devCtx, cbData);
      }
    });
  }

  static void sendDeviceRequest(
      $cs.CSDeviceRequestMessageType messageType, GeneratedMessage msg) {
    sendPbPackFunc(messageType.value, msg);
  }

  static void sendMessageToUser(
      String userCtx, $csc.CSCRequestMessageType type, GeneratedMessage msg) {
    var request = new $cs.DeviceMessageToPairUserRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    request.destUserCtx = userCtx;
    request.type = type.value;
    if (msg != null) {
      var dataBytes = msg.writeToBuffer();
      request.byteArr = dataBytes;
      request.length = dataBytes.length;
    } else {
      request.byteArr = null;
      request.length = 0;
    }
    sendDeviceRequest(
        $cs.CSDeviceRequestMessageType.EDeviceMessageToPairUserRequest,
        request);
  }

  static void sendDeviceVerityIdentityRequest(String name, String password) {
    $cs.DeviceVerityIdentityRequest request =
        new $cs.DeviceVerityIdentityRequest();
    CommMethod.desEncrypt(name).then((name_des) {
      CommMethod.desEncrypt(password).then((password_des) {
        request.name = name_des;
        request.password = password_des;
        request.request = new $cs.Request();
        request.request.cmdId = getCommandId();
        sendDeviceRequest(
            $cs.CSDeviceRequestMessageType.EDeviceVerityRequest, request);
      });
    });
  }
}
