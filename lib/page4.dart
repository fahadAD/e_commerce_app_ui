import 'package:e_commerce_projects/productmodel.dart';
import 'package:flutter/material.dart';
class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});


  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  int? flag_index;
  List<Model_data> flag_Lists=[
    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_Bangladesh_%281971%29.svg/2560px-Flag_of_Bangladesh_%281971%29.svg.png",
        flag_name: "BANGLADESH"
    ),
    Model_data(
        flag_img: "https://t4.ftcdn.net/jpg/01/86/85/71/360_F_186857120_luW6ilhvnSrvUUYLCo1SM8cp772HZ4UA.jpg",
        flag_name:"KSA"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png",
        flag_name:"AMERICA"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
        flag_name: "INDIA"
    ),
    Model_data(
        flag_img: "https://media.istockphoto.com/id/959633894/photo/flag-of-pakistan.webp?b=1&s=170667a&w=0&k=20&c=x7aH6XATKDlY1nIO1qNcx7gmTk_gmWAOj5MaT2WQPMI=",
        flag_name: "PAKISTAN"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/255px-Flag_of_the_United_Arab_Emirates.svg.png",
        flag_name:"ABU DHABI"
    ),
    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_Bangladesh_%281971%29.svg/2560px-Flag_of_Bangladesh_%281971%29.svg.png",
        flag_name: "BANGLADESH"
    ),
    Model_data(
        flag_img: "https://t4.ftcdn.net/jpg/01/86/85/71/360_F_186857120_luW6ilhvnSrvUUYLCo1SM8cp772HZ4UA.jpg",
        flag_name:"KSA"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png",
        flag_name:"AMERICA"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
        flag_name: "INDIA"
    ),
    Model_data(
        flag_img: "https://media.istockphoto.com/id/959633894/photo/flag-of-pakistan.webp?b=1&s=170667a&w=0&k=20&c=x7aH6XATKDlY1nIO1qNcx7gmTk_gmWAOj5MaT2WQPMI=",
        flag_name: "PAKISTAN"
    ),

    Model_data(
        flag_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/255px-Flag_of_the_United_Arab_Emirates.svg.png",
        flag_name:"ABU DHABI"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(9.0),
      child: Scaffold(
        appBar: AppBar(
  elevation: 0,
          backgroundColor:  Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
          title: Text("  Select Language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ),
        body: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: flag_Lists.length,
          itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                flag_index=index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
      decoration: BoxDecoration(
        color: flag_index==index?Colors.orange:Colors.transparent,
        borderRadius: BorderRadius.circular(20)
      ),
                width: MediaQuery.of(context).size.width*0.6,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("${flag_Lists[index].flag_img}",
                          width: MediaQuery.of(context).size.width*0.2,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("${flag_Lists[index].flag_name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,

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
      ),
    );
  }
}
