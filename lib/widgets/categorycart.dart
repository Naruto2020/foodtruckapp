// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:foodtruckapp/helper/appcolors.dart';
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
      child :Container(
        //padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          //elevation: 5,
          //padding :EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 110.0,
                    height: 122.0,
                    //color: Colors.white,
                    child: Image.asset('assets/imgs/${category.imgName}.jpg',
                      fit: BoxFit.cover
                    ),
                    
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(category.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('11h-14h',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('250 m',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          height: 3,
                        ),
                      ),
                      Text('€€ - €€€',
                        style: TextStyle(
                          color: AppColors.MAIN_COLOR,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(width: 5.0,),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: <Widget>[
                  //     CategoryIcon(
                  //       color: category.color,
                  //       iconName: category.icon, size: 5,
                  //     ),
                  //     CategoryIcon(
                  //       color: category.color,
                  //       iconName: category.icon, size: 5,
                  //     )
                  //   ],
                  // ),
                ],
              ),
              SizedBox(width: 100,),
              Container(
                // width: 40.0,
                // height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Column(
                  children: const [
                    Icon(
                      Icons.favorite_border,
                      size: 24.0,
                    ),
                  ],
                ),
                // child: Icon(
                //   Icons.favorite_border ,
                //   size: 24.0,
                //   //semanticLabel: 'Text to announce in accessibility modes',
                // ),
                // child: Icon(
                //   Icons.favorite,
                //   size: 24.0,
                // ),
                // child: CategoryIcon(
                //   color: category.color,
                //   iconName: category.icon, size: 2,
                // ),
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: <Widget> [
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: const <Widget> [
              //           Icon(
              //             Icons.favorite,
              //             size: 24.0,
              //           ),
              //         ],

              //       ),
              //     ),
              //     // Column(
              //     // ),
              //   ],
              // ),
            ],
          ),
        ),
        
      ),
      // child: Container(
      //   //child: Text(categories[index].name),
      //   margin: EdgeInsets.all(10),
      //   // height: 150,
      //   //margin: EdgeInsets.symmetric(vertical: 30.0),
      //   height: 150,
      //   child: Stack(
      //     children: [
      //       ClipRRect(                                     
      //         borderRadius: BorderRadius.circular(15),
      //         child: Image.asset('assets/imgs/${category.imgName}.jpg',
      //           fit: BoxFit.cover,
      //         ),

      //       ),

      //       Positioned(
      //         bottom: 0,
      //         left: 0,
      //         right: 0,
      //         child: Container(
      //           height: 60,
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
      //       Positioned(
      //         bottom: 0,
      //         child: Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: Row(
      //             children: [
      //               // call category icon to display icon on listes
      //               CategoryIcon(
      //                 color: category.color,
      //                 iconName: category.icon, size: 12,
                      
      //               ),
      //               SizedBox(width: 10),
      //               Text(category.name,
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 13
      //                 ),
      //               )
      //             ],
      //           ),
      //         )
              
      //       )

      //     ],
      //   ),
      // )
      
    );
  }

}