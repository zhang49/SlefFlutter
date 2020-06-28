import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutterapp/net/device_controller.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSPbMessage.pb.dart';
import 'package:flutterapp/net/comm_method.dart';
import 'package:flutterapp/net/user_controller.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:flutter_des/flutter_des.dart';

const String adress = '113.71.208.83';
const String hostname = 'zzcpersonal.tpddns.cn';
const int port = 19001;
const int mainMsgHeaderLength = 4 + 1 + 4 + 4;

class Client {
//socket实例
  Socket _socket;

//数据接收组
  var _recList;

//单例方法
  factory Client() => _getInstance();

  static Client get instance => _getInstance();
  static Client _instance;

  Client._internal() {
    // 初始化
  }

  static UserController userCtlr;
  static DeviceController devCtlr;

  static Client _getInstance() {
    if (_instance == null) {
      _instance = new Client._internal();
    }
    if (userCtlr == null) {
      userCtlr = new UserController();
      devCtlr = new DeviceController();
      UserController.sendPbPackFunc = (type, msg) {
        _instance.sendMsg(type, msg);
      };
      DeviceController.sendPbPackFunc = (type, msg) {
        _instance.sendMsg(type, msg);
      };
    }
    return _instance;
  }

  void sendMsg(int type, GeneratedMessage pbMsg) {
    //包头部分
    var header = ByteData(mainMsgHeaderLength);
    Uint8List pbBody;
    int msgLength;
    pbBody = pbMsg.writeToBuffer();
    msgLength = pbBody.length;
    header.setInt32(0, mainMsgHeaderLength - 4 + msgLength);
    header.setUint8(4, 0); //0 Protobuf协议
    header.setInt32(5, type); //messageType
    header.setInt32(9, msgLength); //数据长度
    var msg = pbBody == null
        ? header.buffer.asUint8List()
        : header.buffer.asUint8List() + pbBody.buffer.asUint8List();
    _socket.add(msg);
  }

  Future<Null> startClient() async {
    _recList = new List<int>();
    try {
      var ipAdress = adress;
      if (hostname != null && hostname != '') {
        ipAdress = await CommMethod.getHostName(hostname);
      }
      _socket = await Socket.connect(ipAdress, port);
    } catch (e) {
      print("连接socket出现异常，e=${e.toString()}");
    }
    _socket.listen((data) {
      readData(data);
    });
    UserController.sendUserVerityIdentityRequest('root', '123456');
  }

  void readData(List dataList) {
    _recList = _recList + dataList;
    while (_recList.length >= mainMsgHeaderLength) {
      int totalLength = CommMethod.readInt(_recList, 0) + 4;
      int protocolType = _recList[4];
      int msgType = CommMethod.readInt(_recList, 5);
      int msgLength = CommMethod.readInt(
          _recList, 9); //msgLength +  mainMsgHeaderLength - 4 = totalLength
      if (_recList.length >= totalLength) {
        var data = _recList.sublist(mainMsgHeaderLength, totalLength);
        _recList = _recList.sublist(totalLength, _recList.length);
        recvMessage(protocolType, msgType, data);
      } else {
        break;
      }
    }
  }

  void recvMessage(int protocolType, int type, List<int> data) {
    if (type > CSDeviceReplyMessageType.EDeviceReply.value) {
      devCtlr.recvMessage(type, data);
    } else if (type > CSUserReplyMessageType.EUserReply.value) {
      userCtlr.recvMessage(type, data);
    }
  }
}
