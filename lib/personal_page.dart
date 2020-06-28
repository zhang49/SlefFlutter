import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/net/client_data_collection.dart';

class PersonalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State();
  }
}

class _State extends State<PersonalPage> {
  double headerHeight;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _initState(context);
  }

  NetworkImage getHeaderImage() {
    int w = MediaQuery.of(context).size.width.toInt();
    int h = headerHeight.toInt();
    return new NetworkImage('https://picsum.photos/$w/$h');
  }

  Scaffold _initState(BuildContext context) {
    headerHeight = MediaQuery.of(context).size.height / 4;
    ScrollController _scrollController;
    Scaffold _ret = new Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "个人中心",
          textAlign: TextAlign.center,
        ),
      ),
      body: new ListView(
        controller: _scrollController,
        children: <Widget>[
          Container(
              height: headerHeight,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  image: new DecorationImage(image: getHeaderImage())),
              child: Container(
                height: headerHeight,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      children: <Widget>[
                        Expanded(child: Container()),
                        ClipOval(
                          child: Image.network(
                            'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg',
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Container(
                            width: 10240,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Color(0x10424242), Color(0xff424242)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                            child: Text(
                              DataCollection().user.id == null
                                  ? "NaN"
                                  : DataCollection().user.name,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ))
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
            child:
            Text("lastTime: "+(DataCollection().user.lastLoginTime==null?"NaN":
            DataCollection().user.lastLoginTime.toString()),),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: new Row(
              children: <Widget>[
                vMenuItem(
                    Icon(
                      Icons.widgets,
                      color: Colors.orange[400],
                    ),
                    "控件"),
                vMenuItem(
                    Icon(
                      Icons.widgets,
                      color: Colors.orange[400],
                    ),
                    "控件"),
                vMenuItem(
                    Icon(
                      Icons.widgets,
                      color: Colors.orange[400],
                    ),
                    "控件"),
                vMenuItem(
                    Icon(
                      Icons.widgets,
                      color: Colors.orange[400],
                    ),
                    "控件"),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: ListView(
              shrinkWrap: true,
              controller: _scrollController,
              children: <Widget>[
                _myListTile(
                    icon: Icon(
                      Icons.book,
                      color: Colors.green[400],
                    ),
                    title: "库",
                    showRArrow: true),
                tailBorder(),
                _myListTile(
                    icon: Icon(
                      Icons.widgets,
                      color: Colors.orange[400],
                    ),
                    title: "控件"),
              ],
            ),
          ),
        ],
      ),
    );
    return _ret;
  }

  Widget vMenuItem(Icon icon, String text) {
    return Expanded(
        child: InkWell(
            onTap: () {},
            child: new Container(
                margin: EdgeInsets.only(right: 16),
                width: 50,
                height: 50,
                child: new Column(
                  children: <Widget>[
                    icon,
                    Text(
                      text,
                    ),
                  ],
                ))));
  }

  Widget _myListTile({Icon icon, String title, bool showRArrow = false}) {
    return Container(
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          textAlign: TextAlign.left,
        ),
        trailing: showRArrow ? Icon(Icons.arrow_right) : null,
      ),
    );
  }

  Divider tailBorder() {
    return Divider(
      indent: 70,
      endIndent: 0,
      height: 1,
      color: Colors.grey[400],
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  List<Widget> children;
  ScrollController scrollController;

  ListViewBuilder({this.children, this.scrollController});

  @override
  State<StatefulWidget> createState() {
    return _ListViewBuilder(
        children: this.children, scrollController: this.scrollController);
  }
}

class _ListViewBuilder extends State<ListViewBuilder> {
  /*初始项为50个*/
  List<Widget> children;
  ScrollController scrollController;

  _ListViewBuilder({this.children, this.scrollController});

  @override
  Widget build(BuildContext context) {
    /*灰色分割线*/
    var divider = Divider(
      indent: 1,
      height: 1,
      thickness: 1,
      color: Colors.grey,
    );

    return ListView.separated(
        shrinkWrap: true,
        controller: scrollController,
        itemCount: children == null ? 0 : children.length,
        separatorBuilder: (context, index) {
          return divider;
        },
        itemBuilder: (context, index) {
          /*加载到底部时且集合数量小于100的话，获取更多数据*/
          return children[index];
        });
  }
}
