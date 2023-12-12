import 'dart:async';

import 'package:e_commerce_projects/splash_screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Splash_Screen1 extends StatefulWidget {
  const Splash_Screen1({super.key});

  @override
  State<Splash_Screen1> createState() => _Splash_Screen1State();
}

class _Splash_Screen1State extends State<Splash_Screen1> {
  @override
  void initState() {
   Timer(Duration(seconds: 2), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => Splash_Screen2(),));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

    Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.5,
        height: MediaQuery.of(context).size.height*0.5,
        decoration: BoxDecoration(
         shape: BoxShape.circle,
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.shopping_cart_outlined,color: Colors.orange,size: 120,)),
             Text("FahadStore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)
       
        ],
        ),

      ),
    ),

          CircularProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.black,
          ),
          SizedBox(height: 100,),
          Text("FahadStore WooCommerce",style: TextStyle(color: Colors.white)),
          Text("Version 1.0.2",style: TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}
