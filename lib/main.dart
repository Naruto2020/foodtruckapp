// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './pages/welcomepage.dart';
import './pages/myapp.dart';
//import 'package:flutter_gmaps/directions_model.dart';
//import 'package:flutter_gmaps/directions_repository.dart';


void main() {
  runApp( MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: MyApp(duration: 3, goToPage: const WelcomePage(),))
  );
}






