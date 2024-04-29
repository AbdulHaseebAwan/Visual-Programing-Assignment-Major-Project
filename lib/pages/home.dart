
import 'package:ecomerceapp/widgets/%20ItemsTwo.dart';
import 'package:ecomerceapp/widgets/HomeNav.dart';
import 'package:ecomerceapp/widgets/ItemsFour.dart';
import 'package:ecomerceapp/widgets/ItemsThree.dart';
import 'package:ecomerceapp/widgets/itemswidget.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding:EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Icon(
                    Icons.sort_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),

            child: Text("Hot & Fast Food",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Delivers on Time",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 6,),
          TabBar(

            isScrollable: true,
            //  indicator: BoxDecoration(),
              labelStyle: TextStyle(fontSize: 20),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),

              tabs: [
                Tab(text: "Burger",),
                Tab(text: "Pizza",),
                Tab(text: "SandWich",),
                Tab(text: "Biryani",),
              ]
          ),
          SizedBox(height: 10,),
          Flexible(
            flex: 1,
              child: TabBarView(
                children: [
                  ItemsWidget(),
                  ItemsTwo(),
                  ItemsThree(),
                  ItemsFour()
               //   ItemsWidget(),
                ],
              )
          ),
        ],
      ),
        ),
      ),
       bottomNavigationBar:HomeNav(),
      ),
    );
  }
}
