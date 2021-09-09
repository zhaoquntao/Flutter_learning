import 'package:flutter/material.dart';
import 'car.dart';


class ListViewDemo extends StatefulWidget {
  const ListViewDemo({ Key? key }) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello flutter')),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: _cellForRow,
      ),
    );
  }
  Widget _cellForRow(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(cars[index].imageUrl),
          SizedBox(
            height: 10,
          ),
          Text(cars[index].name),
          Container(
            height: 10,
          )
        ],
      ),
    );
  }
}
