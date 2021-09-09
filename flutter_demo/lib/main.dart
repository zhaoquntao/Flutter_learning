import 'package:flutter/material.dart';
import 'package:flutter_demo/car.dart';
import 'BaseWidgetDemo.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Home(),
      // 是否显示 APP右上角会发现有一个debug图标
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello flutter')),
      body: BaseWidgetDemo(),
    );
  }
}

