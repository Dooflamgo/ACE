import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final txtController=TextEditingController();

  void _selDatePicker()
  {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime.now()).then((pickedDate) {


          if(pickedDate==null){return;}
          txtController.text=pickedDate.toString();
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.all(10),
            child:  TextField(
            decoration: InputDecoration(labelText: 'BirthDate'),
            onTap: _selDatePicker,
            controller: txtController,

            ),
         ),
      ),
    );
  }
}


