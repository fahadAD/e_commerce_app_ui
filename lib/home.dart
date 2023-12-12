
import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
 import 'package:e_commerce_projects/modeldata.dart';
import 'package:e_commerce_projects/page1.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {







int pageIndex=0;

Timer? timer;
 PageController _pageController=PageController(
   initialPage: 0
 );

 @override
  void initState() {
     timer=Timer.periodic(Duration(seconds: 3), (timer) {
       if(pageIndex<=4){
         pageIndex++;
       }else{
         pageIndex=0;
       }
       _pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
     });
    super.initState();
  }
@override
  void dispose() {
    _pageController.dispose();
    timer=null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _demo=[
      Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-banner-post-design-template-ea23b5c40dcc214228966e99cd0c3df6_screen.jpg?ts=1628576099",
        height: 200,
        width: MediaQuery.of(context).size.width*0.9,
      ),

      Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-banner-post-design-template-ea23b5c40dcc214228966e99cd0c3df6_screen.jpg?ts=1628576099",
        height: 200,
        width: MediaQuery.of(context).size.width*0.9,
      ),
      Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-banner-post-design-template-ea23b5c40dcc214228966e99cd0c3df6_screen.jpg?ts=1628576099",
        height: 200,
        width: MediaQuery.of(context).size.width*0.9,
      ),
    ];
    return   Scaffold(

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

        children: [
         Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: 70,
               child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                       color: Colors.orange,
                       shape: BoxShape.circle
                     ),
                      child: Center(
                        child: Column(
                         children: [
                           SizedBox(height: 3,),
                           Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25,),
                           Text("FahadStore",style: TextStyle(fontSize: 5),)
                         ],
                     ),
                      ),
                   ) ,
                    Container(
                     height: 45,
                        width: MediaQuery.of(context).size.width*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange,width: 2)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                   focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Search...",
                            prefixIcon: Icon(Icons.search),

                          ),

                        ))
                 ],
               ),

             ),
         ),
            Stack(
              children: [
                Card(
                  elevation: 15,
                  color: Colors.deepPurple,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: PageView(
                     controller: _pageController,
                      children: _demo,
                      onPageChanged: (index){
                        setState(() {
                          pageIndex=index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 120,
                  child: CarouselIndicator(
                    color: Colors.yellow,
                    activeColor: Colors.green,
                    count: _demo.length,
                    index: pageIndex,
                  ),
                ),
              ],
            ),
SizedBox(height:30),
Center(child: Text("Catagories",style: TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold),)),


            SizedBox(height:10),
                 SizedBox(
   height: 120,
   child: ListView(
     scrollDirection: Axis.horizontal,
     children: [
       SizedBox(width: 5,),
       Container(
         width: 100,
         height: 120,
         child: Column(
             children: [
               Image.network("https://static.fibre2fashion.com/MemberResources/LeadResources/1/2020/6/Seller/20180974/Images/20180974_0_ladies-tops.jpeg",
                 width: 100,
                 height: 100,
                 fit: BoxFit.cover,
               ),
               Text("Tops",style: TextStyle(color: Colors.black)),

             ],
         ),
       ),
       SizedBox(width: 10,),
       InkWell(
         onTap: () {
           setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WatchDetails(),));
           });
         },
         child: Container(

           width: 100,
           height: 120,
           child: Column(
               children: [
                 Image.network("https://www.fastfashionbd.com/cdn/shop/files/3_ac1ae0f6-d59b-48c0-b65b-ac3a0f60e661.jpg?v=1687236528&width=1445",
                   width: 100,
                   height: 100,
                   fit: BoxFit.cover,
                 ),
                 Text("Watch",style: TextStyle(color: Colors.black)),

               ],
           ),
         ),
       ),
       SizedBox(width: 10,),
       Container(
         width: 100,
         height: 120,
         child: Column(
             children: [
               Image.network("https://rukminim2.flixcart.com/image/612/612/xif0q/kids-dress/l/j/j/11-12-years-gf0066-tl-blu-fashion-dream-original-imag9kkcb3hqvfw8-bb.jpeg?q=70",
                 width: 100,
                 height: 100,
                 fit: BoxFit.cover,
               ),
               Text("Cloths",style: TextStyle(color: Colors.black)),

             ],
         ),
       ),
       SizedBox(width: 10,),
       Container(
         width: 100,
         height: 120,
         child: Column(
             children: [
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSau4qqa_XWZkrH69FMJ_8PvJqkqnzR2pxiVsWiGRtHsS7wqCNLI0SJZ5XIAIoO-2pAwqE&usqp=CAU",
                 width: 100,
                 height: 100,
                 fit: BoxFit.cover,
               ),
               Text("T-Shirt",style: TextStyle(color: Colors.black)),

             ],
         ),
       ),
     ],
   ),
 ),

            SizedBox(height:10),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  SizedBox(width: 5,),
                  Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Image.network("https://5.imimg.com/data5/ANDROID/Default/2022/7/ZK/PI/QH/29603120/product-jpeg-500x500.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text("Hand-Bags",style: TextStyle(color: Colors.black)),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Image.network("https://www.shutterstock.com/image-photo/huge-set-beauty-cosmetics-makeup-260nw-404233096.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text("Cosmetics",style: TextStyle(color: Colors.black)),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeJI9f8YEvMr0ky863SjsKp8hBzSWQMsw_hXq4tw1AW756WLNju1Y4xAZK5xoWI4Dbgnw&usqp=CAU",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text("Shoes",style: TextStyle(color: Colors.black)),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
      Stack(
        children: [
            Container(
              width: 100,
              height: 100,
             color: Colors.blueGrey.withOpacity(0.3),
            ),
             Positioned(
               top: 20,
                 left: 30,
                 child: Icon(Icons.more_horiz,size: 70,))
        ],
      ),
                        Text("View More",style: TextStyle(color: Colors.black)),

                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height:30),
            Center(child: Text("Exclusive For You",style: TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold),)),
          SizedBox(height:10),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 5,),
                Container(
                  width: 170,
                  height: 220,
                  child: Column(
                    children: [
                      Image.network("https://static.fibre2fashion.com/MemberResources/LeadResources/1/2020/6/Seller/20180974/Images/20180974_0_ladies-tops.jpeg",
                        width: 170,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text("Womens",style: TextStyle(color: Colors.black)),

                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 170,
                  height: 220,
                  child: Column(
                    children: [
                      Image.network("https://twelvebd.com/cdn/shop/files/ST-SHT-TM23-04F-0152_4_e013b865-e3a2-4298-bac1-07ccd52af73a_600x600.jpg?v=1687254947",
                        width: 170,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text("Mens",style: TextStyle(color: Colors.black)),

                    ],
                  ),
                ),
                SizedBox(width: 10,),


              ],
            ),
          ),
        ],
      ),
          )),
    );
  }
}
