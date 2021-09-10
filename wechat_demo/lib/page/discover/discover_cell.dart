import 'package:flutter/material.dart';
import 'discover_child_page.dart';
import 'package:flutter/widgets.dart';

class DiscorverCell extends StatefulWidget {
  final String title;
  final String imageName;
  final String? subTitle;
  final String? subImageName;

  const DiscorverCell(
      {Key? key,
      required this.title,
      required this.imageName,
      this.subTitle,
      this.subImageName})
      : super(key: key);

  @override
  _DiscorverCellState createState() => _DiscorverCellState();
}

class _DiscorverCellState extends State<DiscorverCell> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('ontap');
        Navigator.of(context).push(
            // MaterialPageRoute(builder: (BuildContext context) {
            //   return DiscoverChildPage(title: title,);
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DiscoverChildPage(title: widget.title)));
        setState(() {
          _backgroundColor = Colors.white;
        });
      },
      onTapDown: (TapDownDetails details) {
        print('ontapdown');
        setState(() {
          _backgroundColor = Colors.grey;
        });
      },
      onTapCancel: () {
        print("ontapcancel");
        _backgroundColor = Colors.white;
      },
      child: Container(
        padding: EdgeInsets.all(10),
        color: _backgroundColor,
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage(widget.imageName),
                    width: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(widget.title),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(widget.subTitle == null ? '' : '$widget.subTitle'),
                  widget.subImageName == null
                      ? Container()
                      : Image(
                          image: AssetImage(widget.subImageName!),
                        ),
                  Image(
                    image: AssetImage('images/icon_right.png'),
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
