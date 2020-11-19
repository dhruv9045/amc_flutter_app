import 'package:flutter/material.dart';
import 'file:///D:/TrueLancer/AMC%20Flutter%20design/amc_flutter_app/lib/assets/constraints.dart';
import '../constants.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: appMainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home,color: whiteColor),
            onPressed: ()=> Navigator.pushReplacementNamed(context, homeScreen)),
          Container(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}