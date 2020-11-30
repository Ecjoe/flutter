import 'package:awesome/pages/homepage.dart';
import 'package:awesome/pages/loginPage.dart';
import 'package:awesome/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'changeNameCard.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs=await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"basic app",
    home:Constants.prefs.getBool("loggedIn")==true
      ?Homepage()
      :loginPage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
      routes: {
      "/login":(context)=>loginPage(),
        "/home":(context)=>Homepage(),
      },
   ),
  );
}





