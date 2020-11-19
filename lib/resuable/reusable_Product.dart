import '../assets/constraints.dart';
import 'package:flutter/material.dart';

class ReuseProductInkwell extends StatelessWidget {
  const ReuseProductInkwell({@required this.function, this.label, this.icon});
  final Function function;
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        child: Card(
          color: appMainColor,
          elevation: 10.0,
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Icon(
                    icon,
                    color: whiteColor,
                    size: 50,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(
                label,
                style: fProductStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}