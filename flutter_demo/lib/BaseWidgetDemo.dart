import 'package:flutter/material.dart';
import 'ListViewDemo.dart';
import 'TextDemo.dart';
import 'RichTextDemo.dart';

class BaseWidgetDemo extends StatelessWidget {
  const BaseWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return RichTextDemo();
    return Container(
      color: Colors.green,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            child: Icon(Icons.add),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(40),
          ),
          Container(
            color: Colors.red,
            child: Icon(Icons.add),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(50),
          ),
          Container(
            color: Colors.red,
            child: Icon(Icons.add),
            width: 80,
            height: 100,
          ),
        ],
      ),
    );
  }
}
