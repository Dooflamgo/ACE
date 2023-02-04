import 'package:flutter/material.dart';
import 'package:ACE/pages/adminselectionbutton.dart';
import 'package:ACE/pages/registerselectionbutton.dart';
import 'package:ACE/pages/studentselectionbutton.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wave.png"),
              fit: BoxFit.cover,
          ),
        ),

        child: Center(
        child: Column(
          children: const [
            SizedBox(height: 50),
            SizedBox(height: 50),
            Icon(
              Icons.lock,
              size: 100,

            ),
            SizedBox(height: 40),

            Text(
              'Academia Classroom Explorer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),

            AdminButton(onTap: null),

            SizedBox(height: 10),

            StudentButton(onTap: null),

            SizedBox(height: 10),

            RegisterButton(onTap: null)



          ],
        ),
        ),
      ),

    );
  }
}
