import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyUsernameTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const MyUsernameTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyUsernameTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyUsernameTextField> {

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
           hintText: 'Username',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.blueGrey,
          filled: true,
        ),
      ),
    );
  }
}