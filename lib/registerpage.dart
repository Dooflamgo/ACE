import 'package:ACE/pages/RegisterLastNameTextfield.dart';
import 'package:ACE/pages/registerEmailTextField.dart';
import 'package:ACE/pages/registerFirstNameTextfield.dart';
import 'package:ACE/pages/registerIDnumberTextField.dart';
import 'package:flutter/material.dart';
import 'package:ACE/pages/registerMiddleNameTextfield.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: const [
                SizedBox(height: 50),

                // logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(height: 25),

                // welcome back, you've been missed!
                Text(
                  'Registration',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 25),

                // username text-field
                RegisterFirstName(
                  controller: null,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                // password text-field
                RegisterMiddleName(
                  controller: null,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                RegisterLastName(
                  controller: null,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                RegisterIDNumber(
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

              ],
            ),
          ),
        ) // column
    ); //scaffold
  }
}
