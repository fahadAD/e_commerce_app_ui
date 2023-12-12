import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';
class Splash_Screen3 extends StatefulWidget {
  const Splash_Screen3({super.key});

  @override
  State<Splash_Screen3> createState() => _Splash_Screen3State();
}

class _Splash_Screen3State extends State<Splash_Screen3> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
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
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3IeeCI2_nnbMK5oaHq2V_ek5i7EIu5wRwsA&usqp=CAU",
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
          Text("It's Simple For You",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),

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
