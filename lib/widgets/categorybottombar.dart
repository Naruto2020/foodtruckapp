// ignore_for_file: unnecessary_import, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../helper/appcolors.dart';
import '../widgets/categoryicon.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20, color: Colors.black.withOpacity(0.2),
            offset: Offset.zero
          )
        ]
      ),
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.favorite, color: AppColors.MAIN_COLOR),
                onPressed: (){},
              ),
            ),

          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.shopping_cart, color: AppColors.MAIN_COLOR),
                onPressed: (){},
              ),
            ),

          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.pin_drop, color: AppColors.MAIN_COLOR),
                onPressed: (){},
              ),
            ),

          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.settings, color: AppColors.MAIN_COLOR),
                onPressed: (){},
              ),
            ),

          ),

        ],
      ),
    );
  }
}