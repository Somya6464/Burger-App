import 'package:burger_app/My1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:burger_app/Home.dart';
// import 'package:burger_app/burger2.dart';
// import 'package:burger_app/Burger3.dart';

void main()
{
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green,
      useMaterial3: true,
      

    ),


    initialRoute: 'My1',
    routes: {
      'My1':(context) => My1(),
      // 'Home':(context) => Home(),
      // 'Burger2':(context) => Burger2(),
      // 'Burger3':(context) => Burger3(),
    },
  ));
}