import 'dart:ffi';

import 'package:fixnum/fixnum.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSPbMessage.pb.dart'
    as pb;
import 'package:flutterapp/model/user.dart';
import 'package:flutterapp/model/device.dart';

class DataCollection {
  factory DataCollection() => _getInstance();

  static DataCollection get instance => _getInstance();
  static DataCollection _instance;

  DataCollection._internal() {
    user = new User();
    pairDevices = new List<Device>();
    selfDevice = new Device();
  }

  static DataCollection _getInstance() {
    if (_instance == null) {
      _instance = new DataCollection._internal();
    }
    return _instance;
  }

  List<Device> pairDevices;
  User user;
  Device selfDevice;

  static Device pdDevice2Device(pb.Device rhs) {
    Device lhs = new Device();
    lhs.id = rhs.id;
    lhs.name = rhs.name;
    lhs.creatTime = DateTime.fromMillisecondsSinceEpoch(rhs.createTime.toInt());
    lhs.lastLoginTime =
        DateTime.fromMillisecondsSinceEpoch(rhs.lastLoginTime.toInt());
    lhs.data=rhs.data;
    return lhs;
  }

  static pb.Device Device2PbDevice(Device rhs) {
    pb.Device lhs = new pb.Device();
    lhs.id = rhs.id;
    lhs.name = rhs.name;
    lhs.createTime = DateTime2Int64(rhs.creatTime);
    lhs.lastLoginTime = DateTime2Int64(rhs.lastLoginTime);
    lhs.data=rhs.data;
    return lhs;
  }

  static Int64 DateTime2Int64(DateTime dt) {
    if (dt == null) {
      return new Int64(0);
    }
    return new Int64(dt.millisecondsSinceEpoch);
  }
}
