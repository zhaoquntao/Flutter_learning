import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Flutter是谷歌的移动UI框架',
        style: TextStyle(fontSize: 20,color: Colors.red),
        children: <TextSpan>[
          TextSpan(
            text: '可以快速在iOS和Android上构建',
            style: TextStyle(fontSize: 40,color: Colors.green)
          ),
          TextSpan(
            text: '高质量的原生界面',
            style: TextStyle(fontSize: 10,color: Colors.blue)
          ),
          TextSpan(
            text: '哈哈哈哈哈',
            style: TextStyle(fontSize: 50),
          ),
          TextSpan(
            text: 'Flutter可以与现有代码一起工作',
            style: TextStyle(fontSize: 25,color: Colors.pink)
          )

        ]
      )
    );
  }
}