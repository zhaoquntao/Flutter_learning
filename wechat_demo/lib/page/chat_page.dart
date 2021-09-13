// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _currentIndex = 0;
  void _onTap(int index) {
    _currentIndex = index;
    setState(() {});
  }

  void initState() {
    super.initState();
    getData();
    print("来了");
  }

  getData() async {
    var future = await http
        .get(Uri.parse('http://rap2api.taobao.org/app/mock/data/2080401'));
    print(future.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "微信",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: PopupMenuButton(
              color: Colors.red,
              onSelected: (item) {
                print(item);
              },
              onCanceled: () {
                print('onCanceled');
              },
              offset: Offset(0, 60),
              child: Image(
                image: AssetImage('images/圆加.png'),
                width: 25,
                height: 25,
              ),
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem>[
                  _buildMenuItem('images/发起群聊.png', '发起群聊'),
                  _buildMenuItem('images/添加朋友.png', '添加朋友'),
                  _buildMenuItem('images/扫一扫1.png', '扫一扫'),
                  _buildMenuItem('images/收付款.png', '收付款'),
                ];
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("微信界面"),
      ),
    );
  }
}

PopupMenuItem _buildMenuItem(String imageName, String title) {
  return PopupMenuItem(
    value: {'imageName': imageName, 'title': title},
    child: Row(
      children: [
        Image(
          image: AssetImage(imageName),
          width: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
