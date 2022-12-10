import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  //  statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        errorColor: Colors.red,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.white,),
      ),
      home: const Draweer(),
    );
  }
}


