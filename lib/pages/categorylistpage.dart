// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodtruckapp/helper/appcolors.dart';
import 'package:foodtruckapp/helper/iconhelper.dart';
import 'package:foodtruckapp/models/category.dart';
import 'package:foodtruckapp/pages/selectedcategorypage.dart';
import 'package:foodtruckapp/pages/themap.dart';
import 'package:foodtruckapp/widgets/categorycart.dart';
import 'package:foodtruckapp/widgets/iconfont.dart';
//import '../widgets/categoryicon.dart';
import '../widgets/categorybottombar.dart';
import '../models/category.dart';
import '../helper/utils.dart';
import '../widgets/categorycart.dart';


class CategoryListPage extends StatelessWidget {
  
  CategoryListPage({Key? key}) : super(key: key);

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: IconFont(
          iconName: IconFontHelper.logo,
          color: AppColors.MAIN_COLOR,
          size: 40, 
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.0),
        height: 200,
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
            // return Container(
            //   //child: Text(categories[index].name),
            //   margin: EdgeInsets.all(10),
            //   //height: 150,
            //   child: Stack(
            //     children: [
            //       ClipRRect(
            //         borderRadius: BorderRadius.circular(15), 
            //         child: Image.asset('assets/imgs/${categories[index].imgName}.jpg',
            //           fit: BoxFit.cover, 
            //         )
            //       ),
            //       Positioned(
            //         bottom: 0,
            //         left: 0,
            //         right: 0,
            //         child: Container(
            //           height: 120,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.only(
            //               bottomLeft: Radius.circular(20),
            //               bottomRight: Radius.circular(20)
            //             ),
            //             gradient: LinearGradient(
            //               begin: Alignment.bottomCenter,
            //               end: Alignment.topCenter,
            //               colors: [
            //                 Colors.black.withOpacity(0.7),
            //                 Colors.transparent
            //               ]
            //             )
            //           ),
            //         )

            //       ),
  
            //     ],
            //   ),
            // );
          },
        ),
      ) 

      
    );
  }
}