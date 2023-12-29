import 'package:dating_app/screen/DASplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: DASplashScreen(),
      debugShowCheckedModeBanner: false,
      builder: scrollBehaviour(),
    );
  }
}