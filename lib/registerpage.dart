import 'package:ACE/pages/DatePicker.dart';
import 'package:ACE/pages/SchoolEmail.dart';
import 'package:ACE/pages/StudentIDTextField.dart';
import 'package:ACE/pages/confirmButton.dart';
import 'package:flutter/material.dart';
import 'package:ACE/pages/FullnameTextField.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[400],
        body: SafeArea(
          child: Center(
            child: Column(
              children: const <Widget>[
                SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'Registration Form',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 25),

                // username text-field
                StudentID(
                  controller: null,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                // password text-field
                Fullname(
                  controller: null,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                RegisterEmail(
                  controller: null,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                MyStatefulWidget(),




                confirmButton(onTap: null)

              ],
            ),
          ),
        ) // column
        ); //scaffold
  }
}
