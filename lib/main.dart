import 'package:flutter/material.dart';
import 'package:untitled/loginButton.dart';

void main() {
  runApp(MaterialApp(
    title: "route",
    home: MyApp(),
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => loginButton()));
          },
          child: Text("Go to Login screen"),
        ),
      ),
    );
  }
}