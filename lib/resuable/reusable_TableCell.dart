import 'package:flutter/material.dart';


class ReusableTableCell extends StatelessWidget {
  const ReusableTableCell({@required this.image, this.function});
  final String image;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: (){
                function();
              },
              child: Image(
                image: AssetImage(image),
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

