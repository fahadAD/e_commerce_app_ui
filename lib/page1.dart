
import 'package:e_commerce_projects/page2.dart';
import 'package:e_commerce_projects/page4.dart';
import 'package:flutter/material.dart';
class WatchDetails extends StatelessWidget {
  const WatchDetails({super.key});

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(child:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.network("https://www.fastfashionbd.com/cdn/shop/files/3_ac1ae0f6-d59b-48c0-b65b-ac3a0f60e661.jpg?v=1687236528&width=1445",
                    height: 250,
                      width: MediaQuery.of(context).size.width*0.7,
                      fit: BoxFit.cover,

                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(child: Icon(Icons.arrow_back,color: Colors.white))),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 30,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLanguage(),));
                          },
                          child: Center(child: Icon(Icons.share,color: Colors.white))),
                    ),
                  ),
                ],
              ),
             Container(
               decoration:BoxDecoration(
                 color: Colors.white,
                   border: Border.all(color: Colors.black26,width: 4),
                 borderRadius: BorderRadius.only(
                     topRight: Radius.circular(40),
                 topLeft: Radius.circular(40)
                 )
               ),
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: SingleChildScrollView(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     SizedBox(height: 15,),

                  Text("  Quartaz Female Watch",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  ListTile(
                    leading: Text("\$940",style: TextStyle(fontSize: 20,color: Colors.red),),
                    title: Text("\$1000",style: TextStyle(color: Colors.grey),),
                    trailing: Container(
                      height: 30,
                      width: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.blue
                       ),
                      child: Center(child: Text("-6 %",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),

                  ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(" Quantity:",style: TextStyle(fontSize: 20 )),
                      ),
                     Row(
                       children: [
                         SizedBox(width: 10,),

                         Container(
                           height: 30,
                           width: 30,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.black12
                           ),
                           child: InkWell(
                               onTap: () {

                               },
                               child: Icon(Icons.add)),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text( "1",style: TextStyle(fontSize: 20 )),
                         ),
                         Container(
                           height: 30,
                           width: 30,
                           decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               color: Colors.black12
                           ),
                           child: InkWell(
                               onTap: () {

                               },
                               child: Center(child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)))),
                          ),




                       ],
                     ),
                     ExpansionTile(title: Text("Description",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                     backgroundColor: Colors.black12,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the person's activities. A wristwatch is designed to be worn around the wrist, attached by a watch strap or other type of bracelet, including metal bands, leather straps,"),
                        ),
                      ],
                     ),
                     Divider(
                       color: Colors.grey,
                     ),
                     ExpansionTile(title: Text("Reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 100,
                                   width: 100,
                                   decoration: BoxDecoration(
                                     border: Border.all(color: Colors.orange,width: 3),
                                    shape: BoxShape.circle
                                   ),
                                   child: Center(child: Text("4.9",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 50))),
                                 ),
                               ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Total 8 Reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                )
                             ],
                           ),
                           Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),

                                 ],
                               ),

                               Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),

                                 ],
                               ),

                               Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),

                                 ],
                               ),

                               Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),

                                 ],
                               ),

                               Row(
                                 children: [
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),
                                   Icon(Icons.star_border,color: Colors.orange,),

                                 ],
                               ),

                             ],
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("12",style: TextStyle(fontSize: 17)),
                                Text("8",style: TextStyle(fontSize: 17)),
                                Text("5",style: TextStyle(fontSize: 17)),
                                Text("3",style: TextStyle(fontSize: 17)),
                                Text("1",style: TextStyle(fontSize: 17)),

                              ],
                           )
                         ],
                       ),
                       Center(
                         child: Container(
                           height: 50,
                           width: MediaQuery.of(context).size.width*0.9,
                           decoration: BoxDecoration(
                               border: Border.all(color: Colors.orange,width: 3),
                               borderRadius: BorderRadius.circular(25)
                           ),
                           child: Center(child: Text( "Write a Review",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20))),
                         ),
                       ),
                     ],
                     ),
                     Divider(
                       color: Colors.grey,
                     ),

SizedBox(height: 10,),
                     Center(
                       child: Container(
                         width: MediaQuery.of(context).size.width*0.9,
                         height: 100,
                         child: Card(
                           elevation: 30,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 50,
                                    foregroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg"),
                                  ),
                                  title: Text("Loius meta",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                                subtitle:  Row(
                                  children: [
                                    Icon(Icons.star_sharp,color: Colors.orange),
                                    Icon(Icons.star_sharp,color: Colors.orange),
                                    Icon(Icons.star_sharp,color: Colors.orange),
                                    Icon(Icons.star_sharp,color: Colors.orange),
                                    Icon(Icons.star_border,color: Colors.orange),
                                  ],
                                ),
                                  trailing: Text("5, june 2022"),
                                ),
                                Text("Its a very good product,it products is low price"),

                              ],
                            ),
                         ),
                       ),
                     ),


                     SizedBox(height: 10,),
                     Center(
                       child: Container(
                         width: MediaQuery.of(context).size.width*0.9,
                         height: 100,
                         child: Card(
                           elevation: 30,
                           child: Column(
                             children: [
                               ListTile(
                                 leading: CircleAvatar(
                                   radius: 50,
                                   foregroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80"),
                                 ),
                                 title: Text("Ribond",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                                 subtitle:  Row(
                                   children: [
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_border,color: Colors.orange),
                                   ],
                                 ),
                                 trailing: Text("5, june 2022"),
                               ),
                               Text("Its a very good product,it products is low price"),

                             ],
                           ),
                         ),
                       ),
                     ),



                     SizedBox(height: 10,),
                     Center(
                       child: Container(
                         width: MediaQuery.of(context).size.width*0.9,
                         height: 100,
                         child: Card(
                           elevation: 30,
                           child: Column(
                             children: [
                               ListTile(
                                 leading: CircleAvatar(
                                   radius: 50,
                                   foregroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                 ),
                                 title: Text("David meca",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                                 subtitle:  Row(
                                   children: [
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_sharp,color: Colors.orange),
                                     Icon(Icons.star_border,color: Colors.orange),
                                   ],
                                 ),
                                 trailing: Text("5, june 2022"),
                               ),
                               Text("Its a very good product,it products is low price"),

                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
Center(

  child:   Row(
crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Container(

          height: 50,

          width: MediaQuery.of(context).size.width*0.3,

          decoration: BoxDecoration(

              color: Colors.orange,

              borderRadius: BorderRadius.circular(25)

          ),

          child: Center(child: Text( "Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))),

      ),
      SizedBox(width: 20,),
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
        },
        child: Container(

            height: 50,

            width: MediaQuery.of(context).size.width*0.3,

            decoration: BoxDecoration(

                border: Border.all(color: Colors.orange),

                borderRadius: BorderRadius.circular(25)

            ),

            child: Center(child: Text( "Add to Cart",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20))),

        ),
      ),

    ],

  ),
)

                   ],
                 ),
               ),
             ),


            ],
          ),
        ),
      )),
    );
  }
}
