import 'package:flutter/material.dart';
import './page/chat_page.dart';
import './page/discover_page.dart';
import './page/friends_page.dart';
import './page/mine_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 2;

  void _onTap(int index) {
    _currentIndex = index;
    setState(() {});
  }

  List<Widget> pages = [
    ChatPage(),
    FriendsPage(),
    DiscoverPage(),
    MinePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedFontSize: 12.0,
        items: [
          BottomNavigationBarItem(
            icon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_chat.png'),),
            activeIcon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_chat_hl.png'),),
            label: "微信" ,
            ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_friends.png'),),
            activeIcon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_friends_hl.png'),), 
            label: "通信录",
            ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_discover.png'),),
            activeIcon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_discover_hl.png'),), 
            label: "发现",
            ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_mine.png'),),
            activeIcon: Image(width: 20,height: 20,image: AssetImage('images/tabbar_mine_hl.png'),), 
            label: "我",
            )
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}


// List<Widget> array = [
//   Scaffold(
//     appBar: AppBar(
//       title: Text("微信"),
//     ),
//     body: Center(
//       child: Text("微信界面"),
//     ),
//   ),
//   Scaffold(
//     appBar: AppBar(
//       title: Text("通讯录"),
//     ),
//     body: Center(
//       child: Text("通讯录界面"),
//     ),
//   ),
//   Scaffold(
//     appBar: AppBar(
//       title: Text("发现"),
//     ),
//     body: Center(
//       child: Text("发现界面"),
//     ),
//   ),
//   Scaffold(
//     appBar: AppBar(
//       title: Text("我的"),
//     ),
//     body: Center(
//       child: Text("我的界面"),
//     ),
//   ),
// ];
