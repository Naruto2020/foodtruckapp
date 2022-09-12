import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconFont extends StatelessWidget {
 //const IconFont({Key? key}) : super(key: key);

  Color color;
  double size;
  String iconName;

  IconFont({Key? key, required this.color, required this.size, required this.iconName, }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Text(
      iconName,
      style: TextStyle(
        color:  color,
        fontSize: size,
        fontFamily: 'untitled-font-1'
      )
    );
  }
}