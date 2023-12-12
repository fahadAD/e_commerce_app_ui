import 'package:e_commerce_projects/productmodel.dart';
import 'package:flutter/material.dart';
class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int? select_index;
  List<Model_data> lists=[
    Model_data(
        image: "https://play-lh.googleusercontent.com/bDCkDV64ZPT38q44KBEWgicFt2gDHdYPgCHbA3knlieeYpNqbliEqBI90Wr6Tu8YOw",
        name: "Paypal"
    ),
    Model_data(
        image: "https://incorpuk.com/blog/content/images/2022/09/Stripe1.png",
        name: "Stripe"
    ),
    Model_data(
        image: "https://miro.medium.com/v2/resize:fill:224:224/1*04xD0gseEr_g4wA7NLQ5iw.png",
        name: "Paytm"
    ),
    Model_data(
        image: "https://cdn.hashnode.com/res/hashnode/image/upload/v1674576838303/c534dd57-3a10-4aae-8873-c2ec14145aef.png?w=1200&h=630&fit=crop&crop=entropy&auto=compress,format&format=webp&fm=png",
        name: "Paystac"
    ),

    Model_data(
        image: "https://play-lh.googleusercontent.com/bDCkDV64ZPT38q44KBEWgicFt2gDHdYPgCHbA3knlieeYpNqbliEqBI90Wr6Tu8YOw",
        name: "Paypal"
    ),
    Model_data(
        image: "https://incorpuk.com/blog/content/images/2022/09/Stripe1.png",
        name: "Stripe"
    ),

  ];
  @override
  Widget build(BuildContext context) {


    return   Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("Check Out",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

      ),
      body: ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: lists.length,
        itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                select_index=index;
              });
            },
            child: Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: select_index==index?Colors.orange:Colors.transparent)
              ),
              width: MediaQuery.of(context).size.width*0.8,
              height: 100,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                       child: Image.network("${lists[index].image}",
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("${lists[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        color: select_index==index?Colors.orange:Colors.transparent,

                      ),
                      child: Icon(Icons.check_circle,color: Colors.white),
                    ),
                  )

                ],
              ),
            ),
          ),
        );
      },


      ),
    );
  }
}
