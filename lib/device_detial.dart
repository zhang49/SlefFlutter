import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/device_screen_preview.dart';
import 'package:flutterapp/model/device.dart';
import 'package:flutterapp/net/device_controller.dart';
import 'package:flutterapp/weight/IGenericDataProvider.dart';
import 'dart:ui' as UI;

import 'net/RecvCallBack.dart';
import 'net/client_data_collection.dart';
import 'net/protobufMessage/generate/CSCPbMessage.pbenum.dart';
import 'net/user_controller.dart';

class DeviceDetial extends StatefulWidget {
  @override
  State createState() {
    return _State();
  }
}

class _State extends State<DeviceDetial> {
  Device _device;
  DateTime bTime;
  RecvCallBack _onNetReturn;
  int _recvImageFps = 0;
  int _recvImageCount = 0;
  UI.Image _screenImage;
  Size _photoScrrenSize;

  DeviceOrientation _deviceOrientation;
  StreamSubscription<DeviceOrientation> subscription;

  @override
  void initState() {
    super.initState();
    _device = new Device(
        id: 1,
        name: 'D121-AC2D-BF55-D121-AC2D-BF55',
        type: 1,
        creatTime: DateTime.now(),
        lastLoginTime: DateTime.now(),
        netState: 1);
    netEventInit();
    //_device= null;

    //横屏
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.landscapeLeft,
//    ]);
  }

  @override
  void dispose() {
    UserController.removeListener(_onNetReturn);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _photoScrrenSize = MediaQuery.of(context).size;
    Map<String, Object> data =
        IGenericDataProvider.of<Map<String, Object>>(context);
    if (data['device'] != null) {
      _device = data['device'];
      _device.type=1;
    }
    // TODO: implement build
    return new Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 100),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              _device?.name == null
                  ? ''
                  : (_device.name.length > 18
                      ? _device.name.substring(0, 18) + '...'
                      : _device.name),
              style: TextStyle(fontSize: 18, color: Colors.blue[400]),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "LastLoginTime:" + DateTime2String(_device?.lastLoginTime),
                  style: TextStyle(fontSize: 14, color: Colors.blue[400]),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: new Row(
              children: buildVeritialMenu(),
            ),
          ),
        ],
      ),
    ));
  }

  void netEventInit() {
    _onNetReturn = RecvCallBack(cscRecv: (type, devId, devCtx, data) {
      switch (CSCReplyMessageType.valueOf(type)) {
        default:
          break;
      }
    });
    UserController.addListener(_onNetReturn);
  }

  List<Widget> buildVeritialMenu() {
    List<Widget> retMenu = <Widget>[];
    if (_device?.type == 1) {
      //pc?
      retMenu = buuldPcVeritialMenu();
    }
    return retMenu;
  }

  List<Widget> buuldPcVeritialMenu() {
    return <Widget>[
      vMenuItem(
          Icon(
            Icons.screen_share,
            size: 35,
            color: Colors.blueAccent[400],
          ),
          "Start", onPress: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IGenericDataProvider<Map<String, Object>>(
                        child: DeviceScreenPreview(),
                        data: {
                          'size': Size(1920, 1080),
                          'quality': 50,
                          'targetDevice': _device
                        })));
      }),
      vMenuItem(
          Icon(
            Icons.stop_screen_share,
            size: 35,
            color: Colors.grey[400],
          ),
          "Stop"),
      vMenuItem(
          Icon(
            Icons.more_horiz,
            size: 35,
            color: Colors.grey[200],
          ),
          "None"),
      vMenuItem(
          Icon(
            Icons.more_horiz,
            size: 35,
            color: Colors.grey[200],
          ),
          "Controls"),
    ];
  }

  Widget vMenuItem(Icon icon, String text, {Function onPress}) {
    return Expanded(
        child: new Material(
            color: Colors.white,
            child: new Ink(
                child: InkWell(
                    onTap: () {
                      onPress?.call();
                    },
                    child: new Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              width: icon.size,
                              height: icon.size,
                              child: icon,
                            ),
                            Text(
                              text,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ))))));
  }

  String DateTime2String(DateTime dt) {
    if (dt == null) {
      return '';
    }
    var toStr = _device?.lastLoginTime?.toString();
    return toStr.substring(0, toStr.length - 7);
  }
}
