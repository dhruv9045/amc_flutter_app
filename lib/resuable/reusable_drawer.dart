import 'package:flutter/material.dart';
import '../assets/constraints.dart';

class ReuseDrawerListTile extends StatelessWidget {
  const ReuseDrawerListTile({@required this.label, this.function, this.icon});
  final String label;
  final Function function;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      title: Text(label),
      leading: Icon(icon, color: whiteColor),
    );
  }
}