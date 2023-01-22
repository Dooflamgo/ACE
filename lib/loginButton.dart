import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "route",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Login"),),
        body: Center(
          child: ElevatedButton(
            onPressed: () {Navigator.pop(context);},
            child: Text("Go back"),
          ),
        ),
      ),
    );
  }
}
