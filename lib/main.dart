import 'package:ACE/splashscreen.dart';
import 'package:flutter/material.dart';
import 'studentlogin_page.dart';
import 'adminlogin_page.dart';
import 'selectionscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),

    );
  }
}
