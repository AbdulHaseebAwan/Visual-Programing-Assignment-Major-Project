import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomerceapp/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

final currentuser= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                  height: MediaQuery.of(context).size.height/4.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(MediaQuery.of(context).size.width, 105.0),
                    )
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/6.5),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(60),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("images/foodie_faster.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("My Profile",style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",

                      ),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.black,),
                      SizedBox(height: 20.0,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,

                          ),),
                          Text("Abdul Haseeb",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.black,),
                      SizedBox(height: 20.0,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,

                          ),),
                          Text("abdulhaseeb@gmail.com",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Icon(Icons.description, color: Colors.black,),
                      SizedBox(height: 20.0,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Terms and Condition", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,

                          ),),
                          // Text("Asim Munir",style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 16.0,
                          //   fontWeight: FontWeight.w600,
                          // ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.black,),
                      SizedBox(height: 20.0,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delete", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,

                          ),),
                          // Text("Asim Munir",style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 16.0,
                          //   fontWeight: FontWeight.w600,
                          // ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Icon(Icons.logout, color: Colors.black,)),
                      SizedBox(height: 20.0,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("LogOut", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,

                          ),),
                          // Text("Asim Munir",style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 16.0,
                          //   fontWeight: FontWeight.w600,
                          // ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
