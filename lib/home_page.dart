import 'dart:convert';
import 'dart:ffi';
import 'dart:math';
import 'dart:ui' as UI;

import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/device_detial.dart';
import 'package:flutterapp/device_screen_preview.dart';
import 'package:flutterapp/weight/IGenericDataProvider.dart';
import 'package:flutterapp/net/RecvCallBack.dart';
import 'package:flutterapp/net/client_data_collection.dart';
import 'package:flutterapp/net/device_controller.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSPbMessage.pb.dart';
import 'package:flutterapp/net/protobufMessage/generate/CSCPbMessage.pb.dart';
import 'package:flutterapp/net/user_controller.dart';
import 'package:protobuf/protobuf.dart';

import 'model/relay.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return _State();
  }
}

class _State extends State<HomePage> {
  DateTime bTime;
  OperatorCollection _opItems = new OperatorCollection();
  RecvCallBack _onNetReturn;
  int _selectQuality = 50;
  bool updataPairDevice = true;
  Size _photoScrrenSize;

  @override
  void initState() {
    netEventInit();
  }

  @override
  Widget build(BuildContext context) {
    _photoScrrenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new Scaffold(
        body: Center(
            child: ListView(
      children: <Widget>[
        Container(
            height: 350,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Device List:',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(20.0),
                    primary: false,
                    // 垂直间距
                    mainAxisSpacing: 20.0,
                    //水平 Item 的个数
                    crossAxisCount: 2,
                    // 水平间距
                    crossAxisSpacing: 20.0,
                    //宽高比
                    childAspectRatio: 1 / 1.5,
                    children: buildGridTileList(),
                  ),
                )
              ],
            )),
        new Container(
            height: 35,
            width: MediaQuery.of(context).size.width - 140,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
            child: new DropdownButtonHideUnderline(
                child: new DropdownButton(
              items: buildQuItems(),
              hint: new Text('请选择'),
              onChanged: (value) {
                setState(() {
                  _selectQuality = value;
                });
              },
//              isExpanded: true,
              value: _selectQuality,
              elevation: 24,
              //设置阴影的高度
              style: new TextStyle(
                //设置文本框里面文字的样式
                color: Color(0xff4a4a4a),
                fontSize: 12,
              ),
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
              iconSize: 40.0,
            ))),
      ],
    )));
  }

  void netEventInit() {
    _onNetReturn = RecvCallBack(csRecv: (t, e) {
      CSUserReplyMessageType type = CSUserReplyMessageType.valueOf(t);
      switch (type) {
        case CSUserReplyMessageType.EUserInformationSyncReport:
          int idx = 0;
          if (DataCollection().pairDevices.length > 0) {
//            var root = json.decode(DataCollection().pairDevices[0].data);
//            Relay relay = Relay.fromJson(root);
//            setState(() {
//              for (var el in relay.status) {
//                _opItems.setState(idx++, el);
//              }
//            });
            setState(() {
              updataPairDevice = true;
            });
          }
          break;
        case CSUserReplyMessageType.EUserPairDeviceStateReport:
          setState(() {
            updataPairDevice = true;
          });
          break;
        case CSUserReplyMessageType.EUserGetPairDevicesReply:
          break;
      }
    });
    UserController.addListener(_onNetReturn);
  }

  @override
  bool get mounted {}

  @override
  void dispose() {
    UserController.removeListener(_onNetReturn);
  }

  List<DropdownMenuItem> buildQuItems() {
    List<DropdownMenuItem> retList = new List<DropdownMenuItem>();
    for (int i = 10; i <= 100; i += 10) {
      retList.add(DropdownMenuItem(
        value: i,
        child: Text(i.toString()),
      ));
    }
    return retList;
  }

  List<Widget> buildGridTileList() {
    List<Widget> widgetList = new List();
    var cardOnPress = (int id) {
      var pairDev = DataCollection().pairDevices;
      var dev = pairDev.where((element) => element.id == id).first;
      if (dev != null) {
        print('state[$id]:${dev.name}');
        if (dev.name == '') {}
      }
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => IGenericDataProvider<Map<String, Object>>(
                  child: DeviceDetial(), data: {'device': dev})));
      return;
      switch (id) {
        case 0:
          break;
        case 1:
          var dev = DataCollection()
              .pairDevices
              .where((element) => element.name != UserController.selfDevName);
          if (dev.length > 0) {
            UserController.sendCapturScreenStopRequest(dev.first);
          }
          break;
        default:
          break;
      }
    };
    if (updataPairDevice) {
      var pDev = DataCollection().pairDevices;
      for (int i = 0; i < pDev.length; i++) {
        widgetList.add(
          cardTab(
              which: pDev[i].id,
              state: pDev[i].netState,
              name: pDev[i].name == DeviceController.selfDevName
                  ? "Self"
                  : pDev[i].name,
              info: pDev[i].lastLoginTime.toString(),
              icon: Icon(
                  pDev[i].name == DeviceController.selfDevName
                      ? Icons.phone_android
                      : Icons.devices_other,
                  color: Colors.white54),
              onPress: () {
                cardOnPress(pDev[i].id);
              }),
        );
      }
    }

    return widgetList;
  }

  getRandomColor() {
    return Color.fromARGB(255, Random.secure().nextInt(10),
        Random.secure().nextInt(10), Random.secure().nextInt(150) + 105);
  }

  Widget cardTab(
      {int which,
      int state,
      String name,
      String info,
      Icon icon,
      Function onPress}) {
    Color itemColor = Colors.cyan;
    var addIconWidget = () {};
    return new Container(
        child: Column(
      children: <Widget>[
        new Material(
          child: new Ink(
            height: 150,
            width: 150,
            decoration: new BoxDecoration(
              color: state == 0 ? Colors.grey : itemColor,
              borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
            ),
            child: new InkWell(
              borderRadius: new BorderRadius.circular(8.0), //给水波纹也设置同样的圆角
              onTap: () {
                int idx = 0;
                onPress?.call();
              },
              child: new Stack(children: <Widget>[
                Positioned(
                  left: 5,
                  top: 5,
                  child: icon,
                ),
                Positioned.fill(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        name.length > 20 ? name.substring(0, 20) + '...' : name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
              ]),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _itemImage() {
    return Stack(
      children: <Widget>[
        Image.network('https://picsum.photos/240/100'),
        Positioned(
          bottom: 8,
          left: 8,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                LimitedBox(
                  maxWidth: 130,
                  child: Text(
                    '_poiName',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _infoText() {
    return Container(
      padding: EdgeInsets.fromLTRB(6, 0, 6, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              PhysicalModel(
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(12),
                  child: Icon(
                    Icons.access_alarm,
                    color: Colors.red,
                  )),
              Container(
                padding: EdgeInsets.all(5),
                width: 90,
                child: Text(
                  'nickName',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.thumb_up,
                size: 14,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  'likeCount',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OperatorCollection {
  List<String> name = new List<String>();
  List<int> state = new List<int>();

  int add(int state, String name) {
    this.state.add(state);
    this.name.add(name);
  }

  int getState(int which) {
    return state[which];
  }

  String getName(int which) {
    return name[which];
  }

  void setState(int which, int state) {
    this.state[which] = state;
  }

  void setName(int which, String name) {
    this.name[which] = name;
  }
}
