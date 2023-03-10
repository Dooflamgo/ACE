import 'package:ACE/pages/registerselectionbutton.dart';
import 'package:flutter/material.dart';
import 'package:ACE/pages/Passwordtextfield.dart';
import 'package:ACE/pages/Usernametextfield.dart';
import 'pages/Usernametextfield.dart';
import 'pages/adminselectionbutton.dart';

class AdminLoginPage extends StatelessWidget {
  AdminLoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: const [
                SizedBox(height: 50), // logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                SizedBox(height: 50), // welcome back, you've been missed!
                Text(
                  'Administrator Login',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),

                SizedBox(height: 25), // username text-field
                MyUsernameTextField(
                  controller: null,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10), // password text-field
                MyPasswordTextField(
                  controller: null,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10), // forgot password
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10), // sign in button


                SizedBox(height: 7),
                // Text(
                //   '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
                //   style: TextStyle(color: Colors.white,
                //       fontWeight: FontWeight.bold),
                // ),

                SizedBox(height: 5),
                Text(
                  "Doesn't have an account yet?",
                  style: TextStyle(color: Colors.grey),
                ),

                SizedBox(height: 5),
                RegisterButton(onTap: null)
              ],
            ),
          ),
        ) // column
        ); //scaffold
  }
}
