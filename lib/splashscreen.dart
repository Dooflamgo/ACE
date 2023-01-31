import 'package:ACE/selectionscreen.dart';
import '../registerpage.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashPage extends StatefulWidget {
   const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
        logo: Image.network('https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
    title: const Text(
    "ACE",
    style: TextStyle(
    fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: SelectionPage(),
      durationInSeconds: 5,
    );
  }
}
