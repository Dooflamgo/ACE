import 'package:flutter/material.dart';


class RegisterMiddleName extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const RegisterMiddleName({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterMiddleName> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterMiddleName> {

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'MiddleName',
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