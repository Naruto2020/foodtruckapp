// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:foodtruckapp/pages/themap.dart';
//import '../pages/auth/signin.dart';
//import '../pages/auth/signup.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../helper/appcolors.dart';
import '../helper/iconhelper.dart';
import '../widgets/iconfont.dart';







// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  //MyApp({Key? key}) : super(key: key);

  int duration = 0;
  Widget goToPage;

  MyApp({Key? key, required this.goToPage, required this.duration}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: duration), (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => goToPage)
      );
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.MAIN_COLOR,
        //backgroundColor: AppColors.MAIN_COLOR,
        title:Container(
          alignment: Alignment.center,
          child: const Text(
            "FoundTruck",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
            
          ),

        ),
        
      ),
      body: Container(
        color:  AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.logo,
          size: 100,

        )
        
      )
    );
  }
}