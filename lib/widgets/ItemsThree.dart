import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemsThree extends StatelessWidget {
  const ItemsThree({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.75,
      children: [
        for(int j=1; j<5; j++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 6,horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF232227),
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
                ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "ThirdItemPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("picture/$j.jpg",width: 110,height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Sandwiches",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Special SandWiches",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                    ),),
                  ),

                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$30",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 27,
                          color: Colors.white,
                        )
                      ],)

                ),

              ],
            ),


          )
      ],

    );
  }
}
