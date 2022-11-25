// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:foodtruckapp/helper/appcolors.dart';
// import 'package:foodtruckapp/helper/iconhelper.dart';
import 'package:foodtruckapp/models/category.dart';
// import 'package:foodtruckapp/pages/selectedcategorypage.dart';
import 'package:foodtruckapp/pages/themap.dart';
import 'package:foodtruckapp/widgets/categorycart.dart';
//import 'package:foodtruckapp/widgets/iconfont.dart';
//import '../widgets/categoryicon.dart';
//import '../widgets/categorybottombar.dart';
import '../models/category.dart';
import '../helper/utils.dart';
import '../widgets/categorycart.dart';


class TruckLists extends StatelessWidget {
  TruckLists({Key? key}) : super(key: key);
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return 
    // Column(
    //   children: [

    //   ],
    // );
    Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 140.0),
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext ctx, int index){
              return CategoryCart(
                category: categories[index],
                onCartClick: () { 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => TheMapPage()
                    )
                  );
                },
              );
            }
          )
        )
      )
    );
    // Container(

    //   margin: EdgeInsets.symmetric(vertical: 30.0),
    //   height: 130,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: categories.length,
    //     itemBuilder: (BuildContext ctx, int index){
    //       return CategoryCart(
    //         category: categories[index],
    //         onCartClick: () { 
    //           Navigator.push(
    //             context, 
    //             MaterialPageRoute(
    //               builder: (context) => TheMapPage()
    //             )
    //           );
    //         },
    //       );
    //     }
    //   )
    // );
    
  }
}