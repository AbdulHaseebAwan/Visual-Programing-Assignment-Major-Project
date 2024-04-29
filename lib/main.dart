import 'package:ecomerceapp/pages/FourItemPage.dart';
import 'package:ecomerceapp/pages/Login.dart';
import 'package:ecomerceapp/pages/SecondItemPage.dart';
import 'package:ecomerceapp/pages/SignUp.dart';
import 'package:ecomerceapp/pages/SingleItemPage.dart';
import 'package:ecomerceapp/pages/ThirdItemPage.dart';
import 'package:ecomerceapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  // home: SignUp(),
   routes: {

        "/": (context)=> const SignUp(),
     "SignUp" : (context)=>SignUp(),
     "LogIn" : (context)=>LogIn(),
     "HomePage": (context)=>HomePage(),
     "SingleItemPage" : (context)=>SingleItemPage(),
     "SecondItemPage" : (context)=>SecondItemPage(),
     "ThirdItemPage" : (context)=> ThirdItemPage(),
     "FourItemPage" : (context)=> FourItemPage(),

   },
   // home: HomePage(),
    );
  }
}

