// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:foodtruckapp/pages/themap.dart';
import '../pages/auth/signin.dart';
import '../pages/auth/signup.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../helper/appcolors.dart';
import '../helper/iconhelper.dart';
import '../widgets/iconfont.dart';



class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.4,
                child: Image.asset('assets/imgs/food-truck-1.webp',
                fit: BoxFit.cover
                )
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: IconFont(
                          iconName: IconFontHelper.logo,
                          color: Colors.white,
                          size: 130,
                          
                        ),
                      ),
                    ),
                    
                  ),
                  const SizedBox(height: 50,),
                  const Text(
                    'Degemer mat !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 50,),
                  const Text('FoundTruck vous permet de trouver \nrapidement des food truck autour de vous',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const TheMapPage())
                        );
                      }, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: AppColors.MAIN_COLOR,
                      padding: const EdgeInsets.all(25),
                      child: const Text("Essayer maintenant",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),         
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => const SignIn())
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              border: Border.all(
                                color: AppColors.MAIN_COLOR,
                                width: 4
                              )
                            ),
                            child:  const Text("Connexion",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF80C038),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),         
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => const SigUp())
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              border: Border.all(
                                color: AppColors.MAIN_COLOR,
                                width: 4
                              )
                            ),
                            child:  const Text("Inscription",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF80C038),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      )
    );
  }

}