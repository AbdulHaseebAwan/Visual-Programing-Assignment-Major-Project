import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


import '../widgets/SingleItemNavBar.dart';

class FourItemPage extends StatelessWidget {
  const FourItemPage({Key? key});

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => _goBack(context),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    onTap: () => _goBack(context), // or handle cart action
                    child: const Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  "biryani/b1.jpg",
                  height: MediaQuery.of(context).size.height / 1.7,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Chiken Biryani",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(

                              onTap: () {
                                // Handle minus icon tap
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  //  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "2",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                // Handle plus icon tap
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  // borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    " We bring you the chiken Biryani with salad,cold drink and fries. .",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
          SizedBox(height: 26,),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Total Price", style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,

                    ),),
                    SizedBox(height: 10,),
                    Text("\$100", style: TextStyle(
                      color: Colors.white60,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,

                    ),),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFEF8322),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )
                    ),
                    child: Row(
                      children: [
                        Text("Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(CupertinoIcons.cart_fill, color: Colors.white,size: 30,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
            ],
          ),
        ),


      ),
    //  bottomNavigationBar: SingleItemNavBar(),
    );
  }
}
