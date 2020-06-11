import 'package:amcflutterapp/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Hexcolor("#365EA1"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home,color: Colors.white),
            onPressed: ()=>Navigator.of(context).push(
              new MaterialPageRoute(builder: (context)=> new HomePage()),),
          ),
          Container(
            height: 40.0,
          ),
        ],
      ),
    );
  }

}