import 'dart:ui';
import 'package:awesome/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'changeNameCard.dart';

void main(){
  runApp(
    MaterialApp(
    title:"basic app",
    home:Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
   ),
  );
}





