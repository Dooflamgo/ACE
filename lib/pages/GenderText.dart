import 'package:flutter/material.dart';


const List<Widget> gender = <Widget>[
  Text('Male'),
  Text('Female'),
];


class Gender extends StatelessWidget {
   Gender({Key? key}) : super(key: key);

  final List<bool> _selectedGender = <bool> [true, false];
  bool vertical = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
      child: const Text(
        'Gender',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),

    );
  }
}
