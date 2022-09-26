
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import './iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;

  CategoryIcon({required this.color, required this.iconName, required this.size});

  @override
  Widget build(BuildContext context){

    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(10),
        child: IconFont(
          color: Colors.white,
          iconName: iconName,
          size: size,
        ),
      )
    );
  }
}



