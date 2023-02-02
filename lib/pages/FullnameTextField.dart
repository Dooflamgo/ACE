import 'package:flutter/material.dart';

class Fullname extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Fullname({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<Fullname> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<Fullname> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Fullname (LastN, FirstN MiddleN.)',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
