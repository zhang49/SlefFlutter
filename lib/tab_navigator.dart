import 'package:flutter/material.dart';
import 'package:flutterapp/bottom_page_1.dart';
import 'package:flutterapp/bottom_page_2.dart';
import 'package:flutterapp/device_screen_preview.dart';
import 'bottom_page_2.dart';
import 'personal_page.dart';
import 'home_page.dart';

class TabNavigator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TabNavigatorState();
  }
}

class _TabNavigatorState extends State<StatefulWidget>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _curIdx=0;
  final PageController _controller=PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          BottomPage1(),
          BottomPage2(),
          PersonalPage(),
          DeviceScreenPreview(),
        ],
        //禁止滑动
        physics: NeverScrollableScrollPhysics(),
      ),
        bottomNavigationBar:BottomNavigationBar(
        currentIndex: _curIdx,
        onTap: (idx){
          _controller.jumpToPage(idx);
          setState(() {
            _curIdx=idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _bottomNavigationBar("Home",Icons.home , 0),
          _bottomNavigationBar("Fill",Icons.library_books, 1),
          _bottomNavigationBar("Fill", Icons.hourglass_empty, 2),
          _bottomNavigationBar("User", Icons.person, 3),
        ],
        )
    );

  }
  _bottomNavigationBar(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _defaultColor,),
      activeIcon: Icon(icon, color: _activeColor,),
      title:Text(title,style: TextStyle(color: _curIdx !=index ? _defaultColor:_activeColor),),
    );
  }

}