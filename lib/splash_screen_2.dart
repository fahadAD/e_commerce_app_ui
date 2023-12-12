import 'dart:async';

import 'package:e_commerce_projects/home.dart';
import 'package:e_commerce_projects/splash_screen_3.dart';
import 'package:flutter/material.dart';
class Splash_Screen2 extends StatefulWidget {
  const Splash_Screen2({super.key});

  @override
  State<Splash_Screen2> createState() => _Splash_Screen2State();
}

class _Splash_Screen2State extends State<Splash_Screen2> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
       Navigator.push(context, MaterialPageRoute(builder: (context) => Splash_Screen3(),));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.orange,
appBar: AppBar(
  backgroundColor: Colors.orange,
  elevation: 0,
  actions: [
    TextButton(onPressed: () {
setState(() {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
});
    }, child: Text("Skip",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
  ],
),
     body: Column(
       children: [
         ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(30)),
           child: Image.network("https://miro.medium.com/v2/resize:fit:1400/1*s2ePTcXJkm6Sm93yomzSKA.png",
           height: 400,
             width: MediaQuery.of(context).size.width,
fit: BoxFit.cover,
           ),
         ),
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width*0.2,

            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.orange,size: 30,)),
            
          ),
         Text("Welcome to FahadStore",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),

         SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fahad Store Light & Dark theme WooCommerce E-Commerce app,\n           This apps will provide you easily solution ",
              style: TextStyle(color: Colors.white),

            ),
          )
       ],
     ),
    );
  }
}
