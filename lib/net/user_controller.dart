import 'dart:collection';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/net/RecvCallBack.dart';
import 'package:flutterapp/net/client_data_collection.dart';
import 'package:flutterapp/net/comm_method.dart';
import 'package:flutterapp/net/device_controller.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSPbMessage.pb.dart'
    as $cs;
import 'package:flutterapp/net/protobufMessage/generate/CSCPbMessage.pb.dart'
    as $csc;
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:flutter_des/flutter_des.dart';
import 'package:flutterapp/model/device.dart' as $mdDev;

class UserController {
  static String selfDevName = 'photo';

  static Function sendPbPackFunc;
  static List<RecvCallBack> RecvCallBacks = new List<RecvCallBack>();
  static List<RecvCallBack> cscRecvCallBacks = new List<RecvCallBack>();

  static int commanId = 0;

  UserController();

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

  void recvMessage(int type, List<int> data) {
    bool isCSCMessage = false;
    switch ($cs.CSUserReplyMessageType.valueOf(type)) {
      case $cs.CSUserReplyMessageType.EUserVerityIdentityReply:
        var identityReply = $cs.UserVerityIdentityReply.fromBuffer(data);
        DataCollection().user.id = identityReply.userId;
        DataCollection().user.name = identityReply.name;
        var utcTime = DateTime.fromMillisecondsSinceEpoch(
            identityReply.lastLoginTime.toInt(),
            isUtc: true);
        var utcTimeStr = utcTime.toString();
        var beijingTime = DateTime.parse("${utcTimeStr.substring(0, 19)}-0800");
        DataCollection().user.lastLoginTime = beijingTime;
        break;
      case $cs.CSUserReplyMessageType.EUserInformationSyncReport:
        var infoSync = $cs.InformationSyncReport.fromBuffer(data);
        DataCollection().user.hasSync = true;
        infoSync.pairDevices.forEach((item) => {
              DataCollection()
                  .pairDevices
                  .add(DataCollection.pdDevice2Device(item))
            });
        infoSync.onlineDeviceIdVec.forEach((el) {
          var mchDev =
              DataCollection().pairDevices.where((element) => element.id == el);
          if (mchDev.length > 0) {
            mchDev.forEach((element) {
              element.netState = 1;
            });
          }
        });
        var b = DataCollection()
            .pairDevices
            .where((element) => element.name == selfDevName);
        if (b.length <= 0) {
          sendAddDevice();
        } else {
          DeviceController.sendDeviceVerityIdentityRequest(selfDevName, "");
        }
        break;
      case $cs.CSUserReplyMessageType.EUserAddDeivceReply:
        var addDevReply = $cs.AddDevicesReply.fromBuffer(data);
        if (addDevReply.reply.code == 0 && addDevReply.errorCode.length > 0) {
          sendAddDevicePair(addDevReply.deviceId[0], selfDevName);
        }
        break;
      case $cs.CSUserReplyMessageType.EUserAddPairDeivceReply:
        var addPairDeviceReply = $cs.AddPairDeviceReply.fromBuffer(data);
        if (addPairDeviceReply.reply.code == 0) {
          sendGetPairDevice();
        }
        break;
      case $cs.CSUserReplyMessageType.EUserGetPairDevicesReply:
        var getPairDevicesReply = $cs.GetPairDevicesReply.fromBuffer(data);
        if (getPairDevicesReply.reply.code == 0) {
          if (getPairDevicesReply.device != null) {
            var devNaN = DataCollection().pairDevices.where((element) =>
                getPairDevicesReply.device
                    .where((d) => d.id == element.id)
                    .length ==
                0);
            if (devNaN != null && devNaN.length > 0) {
              for (var elemnet in devNaN) {
                DataCollection()
                    .pairDevices
                    .add(DataCollection.pdDevice2Device(new $cs.Device()));
              }
            }
          }
          for (var oldDev in DataCollection().pairDevices) {
            var dev = getPairDevicesReply.onLineDeviceIdVec
                .where((element) => element == oldDev.id);
            bool isExists = true;
            if (dev == null || dev.length == 0) {
              isExists = false;
            }
            if (isExists) {
              oldDev.netState = 1; //online;
            } else {
              oldDev.netState = 0;
            }
          }
        }
        break;
      case $cs.CSUserReplyMessageType.EUserPairDeviceStateReport:
        var pairDeviceStateReport = $cs.PairDeviceStateReport.fromBuffer(data);
        int a = pairDeviceStateReport.deviceId;
        var dev = DataCollection()
            .pairDevices
            .where((element) => element.id == pairDeviceStateReport.deviceId);
        if (dev.length == 0) {
          var mdDev = DataCollection.pdDevice2Device(new $cs.Device());
          mdDev.netState = pairDeviceStateReport.state;
          DataCollection().pairDevices.add(mdDev);
        } else {
          dev.first.netState = pairDeviceStateReport.state;
        }
        break;
      case $cs.CSUserReplyMessageType.EUserDeviceHistoryDataReply:
        var deviceHistoryDataReply =
            $cs.DeviceHistoryDataReply.fromBuffer(data);
        if (deviceHistoryDataReply.reply.code == 0 &&
            deviceHistoryDataReply.device != null) {
          var dev = DataCollection().pairDevices.where(
              (element) => element.id == deviceHistoryDataReply.device.id);
          dev.first.data = deviceHistoryDataReply.device.data;
        }
        break;
      case $cs.CSUserReplyMessageType.EUserMessageToPairUserReport:
        isCSCMessage = true;
        RecvPairDeviceReport(
            $cs.MessageToUserDevicePairReport.fromBuffer(data));
        break;
      default:
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

  static void RecvPairDeviceReport(
      $cs.MessageToUserDevicePairReport devReport) {
    int devId = devReport.sourceId;
    String devCtx = devReport.sourceCtx;
    $csc.CSCReplyMessageType type =
        $csc.CSCReplyMessageType.valueOf(devReport.type);
    List<int> data = devReport.byteArr; //data 可能为空
    int length = devReport.length;
    Object cbData = null;
    switch (type) {
      case $csc.CSCReplyMessageType.EC2CScreenImageBufferReport:
        $csc.ScreenImageBufferReport imageBufferReport =
            $csc.ScreenImageBufferReport.fromBuffer(data);
        cbData = imageBufferReport.bitMap;
        break;
    }
    RecvCallBacks.forEach((element) {
      if (element.cscRecv != null &&
          (element.type == -1 || element.type == type)) {
        element.cscRecv(devReport.type, devId, devCtx, cbData);
      }
    });
  }

  static void sendUserRequest(
      $cs.CSUserRequestMessageType messageType, GeneratedMessage msg) {
    sendPbPackFunc(messageType.value, msg);
  }

  static void sendUserVerityIdentityRequest(String account, String password) {
    $cs.UserVerityIdentityRequest request = new $cs.UserVerityIdentityRequest();
    CommMethod.desEncrypt(account).then((account_des) {
      CommMethod.desEncrypt(password).then((password_des) {
        request.account = account_des;
        request.password = password_des;
        request.request = new $cs.Request();
        request.request.cmdId = getCommandId();
        sendUserRequest(
            $cs.CSUserRequestMessageType.EUserVerityIdentityRequest, request);
      });
    });
  }

  static void sendAddDevice() {
    $cs.AddDevicesRequest request = new $cs.AddDevicesRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    var dev = new $cs.Device();
    dev.name = selfDevName;
    request.device.add(dev);
    sendUserRequest(
        $cs.CSUserRequestMessageType.EUserAddDeivceRequest, request);
  }

  static void sendAddDevicePair(int devId, String name) {
    $cs.AddPairDeviceRequest request = new $cs.AddPairDeviceRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    request.id = devId;
    request.name = name;
    sendUserRequest(
        $cs.CSUserRequestMessageType.EUserAddPairDeivceRequest, request);
  }

  static Future<void> sendGetPairDevice() async {
    var request = new $cs.GetPairDevicesRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    sendUserRequest(
        $cs.CSUserRequestMessageType.EUserGetPairDevicesRequest, request);
  }

  static void sendGetDeviceHistoryData() {
    var request = new $cs.DeviceHistoryDataRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    sendUserRequest(
        $cs.CSUserRequestMessageType.EUserDeviceHistoryDataRequest, request);
  }

  static void sendMessageToPairDevice(
      int devId, $csc.CSCRequestMessageType type, GeneratedMessage msg) {
    var request = new $cs.UserMessageToPairDeviceRequest();
    request.request = new $cs.Request();
    request.request.cmdId = getCommandId();
    request.destDeviceId = devId;
    request.type = type.value;
    if (msg != null) {
      var dataBytes = msg.writeToBuffer();
      request.byteArr = dataBytes;
      request.length = dataBytes.length;
    } else {
      request.length = 0;
    }
    sendUserRequest(
        $cs.CSUserRequestMessageType.EUserMessageToPairDeviceRequest, request);
  }

  static void sendCapturScreenStartRequest(
      $mdDev.Device dev, int width, int height, int quality) {
    $csc.CaptureScreenStartRequest request =
        new $csc.CaptureScreenStartRequest();
    request.width = width;
    request.height = height;
    request.quality = quality;
    sendMessageToPairDevice(dev.id,
        $csc.CSCRequestMessageType.EC2CCaptureScreenStartRequest, request);
  }

  static void sendCapturScreenStopRequest($mdDev.Device dev) {
    sendMessageToPairDevice(
        dev.id, $csc.CSCRequestMessageType.EC2CCaptureScreenStopRequest, null);
  }
}
