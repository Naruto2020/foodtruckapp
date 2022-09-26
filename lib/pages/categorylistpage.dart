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
      body:  Container(
        child : Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('Faite votres choix:',
                  textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      // call categoryCard widget to display list 
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
 
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,             
              child: CategoryBottomBar(),
            )
          ],
        )
      ),
      
    );
  }
}