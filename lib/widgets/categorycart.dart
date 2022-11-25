// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:foodtruckapp/models/category.dart';
import './iconfont.dart';
import '../widgets/categoryicon.dart';
import '../models/category.dart';
import '../helper/utils.dart';

class CategoryCart extends StatelessWidget {
  Category category;
  Function onCartClick;

  CategoryCart( {required this.category, required this.onCartClick}) ;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        onCartClick();
      },
    child: Container(
      //child: Text(categories[index].name),
      margin: EdgeInsets.all(10),
      // height: 150,
      //margin: EdgeInsets.symmetric(vertical: 30.0),
      height: 150,
      child: Stack(
        children: [
          ClipRRect(                                     
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/imgs/${category.imgName}.jpg',
              fit: BoxFit.cover,
            ),

          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent
                  ]
                )
              ),
            )

          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  // call category icon to display icon on listes
                  CategoryIcon(
                    color: category.color,
                    iconName: category.icon, size: 12,
                    
                  ),
                  SizedBox(width: 10),
                  Text(category.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13
                    ),
                  )
                ],
              ),
            )
            
          )

        ],
      ),
    )
      
    );
  }

}