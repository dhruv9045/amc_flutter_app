import 'package:flutter/material.dart';
import '../assets/constraints.dart';

class ExpandTileReuse extends StatelessWidget {
  const ExpandTileReuse({@required this.label, this.content, this.icon});
  final String label;
  final String content;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        icon,
        color: blackColor,
        size: leadingIconSize,
      ),
      title: Text(label),
      children: <Widget>[
        Icon(
          icon,
          color: blackColor,
          size: 60,
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
