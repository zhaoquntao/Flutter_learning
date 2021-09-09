import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  // const TextDemo({Key? key}) : super(key: key);

  final TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.green
  );
  @override
  Widget build(BuildContext context) {
    var text = Text(
      'Text我们一开始讲过了',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
    );
    return text;
  }
}
