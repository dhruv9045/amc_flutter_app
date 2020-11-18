import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constraints.dart';

class Reusable extends StatelessWidget {
  const Reusable({@required this.launcher, this.texts});

  final String launcher;
  final String texts;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: container_width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: RaisedButton(
          color: colour,
          onPressed: () => launch(launcher),
          child: Text(
            texts,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
