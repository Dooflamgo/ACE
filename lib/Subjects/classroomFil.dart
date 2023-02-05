import 'package:ACE/pages/returnButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(classRoom());
}

class classRoom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyroomWidget(),
    );
  }
}

class MyroomWidget extends StatefulWidget {
  @override
  State<MyroomWidget> createState() => _MyroomWidgetState();
}

class _MyroomWidgetState extends State<MyroomWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: const <Widget>[
              SizedBox(height: 150),
              Text(
                'FIL',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),

              returnButton(onTap: null)
            ]
        ),
      ),
    );
  }
}