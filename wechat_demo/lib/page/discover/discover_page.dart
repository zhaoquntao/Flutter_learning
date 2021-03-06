import 'package:flutter/material.dart';
import 'discover_cell.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        centerTitle: true,
        title: Text(
          "发现",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        color: _themeColor,
        height: 800,
        child: ListView(
          children: [
            DiscorverCell(title: "朋友圈", imageName: 'images/朋友圈.png'),
            SizedBox(height: 10,),
            DiscorverCell(title: "扫一扫", imageName: 'images/扫一扫2.png'),
            Row(children: [Container(color: Colors.white,height: 0.5,width: 50,),Container(color: _themeColor,height: 0.5,)],),
            DiscorverCell(title: "摇一摇", imageName: 'images/摇一摇.png'),
            SizedBox(height: 10,),
            DiscorverCell(title: "看一看", imageName: 'images/看一看icon.png'),
            Row(children: [Container(color: Colors.white,height: 0.5,width: 50,),Container(color: _themeColor,height: 0.5,)],),
            DiscorverCell(title: "搜一搜", imageName: 'images/搜一搜 2.png'),
            SizedBox(height: 10,),
            DiscorverCell(title: "附近的人", imageName: 'images/附近的人icon.png'),
            SizedBox(height: 10,),
            DiscorverCell(title: "购物", imageName: 'images/购物.png',subTitle: "618限时特价",subImageName: 'images/badge.png',),
            Row(children: [Container(color: Colors.white,height: 0.5,width: 50,),Container(color: _themeColor,height: 0.5,)],),
            DiscorverCell(title: "游戏", imageName: 'images/游戏.png'),
            SizedBox(height: 10,),
            DiscorverCell(title: "小程序", imageName: 'images/小程序.png'),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
