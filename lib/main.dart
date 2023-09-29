import 'package:flutter/material.dart';
import 'package:practicefile/Home.dart';
import 'package:practicefile/screen1.dart';
import 'package:practicefile/screen2.dart';
import 'package:practicefile/screen3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:Home.routeName,
        routes:{
          Screenone.routeName:(context) => Screenone(),
          Screentwo.routeName:(context) => Screentwo(),
          Screenthree.routeName:(context) => Screenthree(),
          Home.routeName:(context) => Home(),
        }
    );
  }
}
