 import 'package:e_commerce_projects/home.dart';
import 'package:e_commerce_projects/page1.dart';
import 'package:e_commerce_projects/page2.dart';
import 'package:e_commerce_projects/page3.dart';
import 'package:e_commerce_projects/page4.dart';
import 'package:e_commerce_projects/splash_screen_1.dart';
import 'package:e_commerce_projects/splash_screen_2.dart';
import 'package:e_commerce_projects/splash_screen_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return   MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Splash_Screen1(),
     );
   }
 }
