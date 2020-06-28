import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/model/device.dart';
import 'dart:ui' as UI;

import 'net/RecvCallBack.dart';
import 'package:flutterapp/weight/IGenericDataProvider.dart';
import 'net/client_data_collection.dart';
import 'net/protobufMessage/generate/CSCPbMessage.pbenum.dart';
import 'net/user_controller.dart';

class DeviceScreenPreview extends StatefulWidget {
  @override
  State createState() {
    return _State();
  }
}

class _State extends State<DeviceScreenPreview> {
  DateTime bTime;
  RecvCallBack _onNetReturn;
  int _recvImageFps = 0;
  int _recvImageCount = 0;
  UI.Image _screenImage;
  Size _photoScrrenSize;

  DeviceOrientation _deviceOrientation;
  StreamSubscription<DeviceOrientation> subscription;
  int _selectQuality = 50;
  Size _shareSize = Size(1920, 1080);
  Device _targetDevice;

  @override
  void initState() {
    super.initState();
    netEventInit();
    //横屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    UserController.removeListener(_onNetReturn);
    if (_targetDevice != null) {
      UserController.sendCapturScreenStopRequest(_targetDevice);
    }
    //竖屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Object> data =
        IGenericDataProvider.of<Map<String, Object>>(context);
    _selectQuality = data['quality'] ?? 50;
    _shareSize = data['size'] ?? Size(1024, 766);
    _targetDevice = data['targetDevice'];
    if (_targetDevice == null) {
      //error crash
    } else {
      send() async {
        if (_targetDevice != null) {
          UserController.sendCapturScreenStartRequest(
              _targetDevice,
              _shareSize.width.toInt(),
              _shareSize.height.toInt(),
              _selectQuality);
        }
      }

      send();
    }

    _photoScrrenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: CustomPaint(
            painter: ScreenPainter(
                srcImg: _screenImage,
                destRect: _screenImage != null
                    ? Rect.fromLTWH(
                        0,
                        0,
                        _photoScrrenSize.width.toDouble(),
                        _photoScrrenSize.width.toDouble() /
                            1920 *
                            _screenImage.height)
                    : null),
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "RecvImage Fps:",
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "${_recvImageFps}",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.red[400]),
                    )
                  ],
                )),
          ),
        ),
        Container(
            child: InkWell(
          onTap: () {},
          child: Text('Roate', style: TextStyle(fontSize: 20)),
        )),
        Container(
            child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text('Stop', style: TextStyle(fontSize: 20)),
        )),
      ],
    ));
  }

  void netEventInit() {
    _onNetReturn = RecvCallBack(cscRecv: (type, devId, devCtx, data) {
      switch (CSCReplyMessageType.valueOf(type)) {
        case CSCReplyMessageType.EC2CScreenImageBufferReport:
          if (bTime == null) {
            bTime = DateTime.now();
          }
          getImageData() async {
            setState(() {
              UI.decodeImageFromList(data, (img) async {
                setState(() {
                  _screenImage = img;
                  _recvImageCount++;
                  _recvImageFps = (_recvImageCount /
                          ((DateTime.now().millisecondsSinceEpoch -
                                      bTime.millisecondsSinceEpoch)
                                  .toDouble() /
                              1000))
                      .toInt();
                });
              });
            });
          }
          getImageData();
          break;
      }
    });
    UserController.addListener(_onNetReturn);
  }
}

class ScreenPainter extends CustomPainter {
  UI.Image srcImg;
  Rect destRect;

  ScreenPainter({this.srcImg, this.destRect});

  @override
  void paint(Canvas canvas, Size size) {
    if (srcImg != null) {
      canvas.drawImageRect(
          srcImg,
          Rect.fromLTWH(
              0, 0, srcImg.width.toDouble(), srcImg.height.toDouble()),
          this.destRect,
          Paint());
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
