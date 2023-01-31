import 'package:flutter/material.dart';


class RegisterEmail extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const RegisterEmail({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterEmail> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterEmail> {

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'School Issued Email Address',
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