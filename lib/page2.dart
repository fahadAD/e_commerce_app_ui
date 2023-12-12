import 'package:e_commerce_projects/page3.dart';
import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
       actions: [
         TextButton(onPressed: () {

         }, child: Text("3 items"))
       ],
      ),
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: MediaQuery.of(context).size.width*0.8,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 2,),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://www.fastfashionbd.com/cdn/shop/files/3_ac1ae0f6-d59b-48c0-b65b-ac3a0f60e661.jpg?v=1687236528&width=1445",
                            height: 120,
                            width: MediaQuery.of(context).size.width*0.2,

                          ),
                        ),
                      ),
                      Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   Row(

                              children: [

                                Text("Quartaz Female\n Watch",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18 ),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: () {
                                }, icon: Icon(Icons.delete_forever_outlined,color: Colors.orange,size: 30,))

                              ],

                            ),
                          ),

                          Row(

                            children: [
                              Text("9500.00\$",style: TextStyle(color: Colors.black,fontSize: 20),),
                              SizedBox(width: 20,),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Center(child: Icon(Icons.add,color: Colors.white))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Center(child: Icon(Icons.minimize,color: Colors.white))),
                              ),
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: MediaQuery.of(context).size.width*0.8,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 2,),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://shop.kenanddanadesign.com/cdn/shop/products/IMG_1381.jpg?v=1626206489",
                            height: 120,
                            width: MediaQuery.of(context).size.width*0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   Row(

                              children: [

                                Text("Gold Rose Ring",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18 ),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: () {
                                }, icon: Icon(Icons.delete_forever_outlined,color: Colors.orange,size: 30,))

                              ],

                            ),
                          ),

                          Row(

                            children: [
                              Text("4500.00\$",style: TextStyle(color: Colors.black,fontSize: 20),),
                              SizedBox(width: 20,),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Center(child: Icon(Icons.add,color: Colors.white))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Center(child: Icon(Icons.minimize,color: Colors.white))),
                              ),
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: MediaQuery.of(context).size.width*0.8,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 2,),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://twelvebd.com/cdn/shop/files/ST-SHT-TM23-04F-0155_8_600x600.jpg?v=1687259004",
                            height: 120,
                            width: MediaQuery.of(context).size.width*0.2,

                          ),
                        ),
                      ),
                      Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   Row(

                              children: [

                                Text("Men's casual shirt",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18 ),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: () {
                                }, icon: Icon(Icons.delete_forever_outlined,color: Colors.orange,size: 30,))

                              ],

                            ),
                          ),

                          Row(

                            children: [
                              Text("2500.00\$",style: TextStyle(color: Colors.black,fontSize: 20),),
                              SizedBox(width: 20,),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Center(child: Icon(Icons.add,color: Colors.white))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Center(child: Icon(Icons.minimize,color: Colors.white))),
                              ),
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon((Icons.percent)),
                    ),
                    SizedBox(width: 20,),
                   Text("|",style: TextStyle(fontSize: 30),),
SizedBox(width: 20,),
                    Text("No items in the Card"),
                    SizedBox(width: 132,),
                   Container(
                     height: 50,
                     width: 100,
                     decoration: BoxDecoration(
                       color: Colors.pinkAccent,
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(20),
                         bottomRight: Radius.circular(20),
                       )
                     ),
                   )
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),
Text("    Your Order",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Text(" Subtotal"),
    Text(" \$25400.00",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.black,fontSize: 20),),

  ],
),

            Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 60,
              endIndent: 60,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" Total Amount",style: TextStyle(fontSize: 20,color: Colors.black)),
                Text(" \$25400.00",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.black,fontSize: 20),),

              ],
            ),
            SizedBox(height: 25,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout(),));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange
                  ),
                  child: Center(child: Text("Check Out",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
