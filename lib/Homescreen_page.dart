import 'package:ACE/adminlogin_page.dart';
import 'package:ACE/Subjects/classroomNSTP.dart';
import 'package:ACE/registerpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Homescreen());
}

class Homescreen extends StatelessWidget {
  static const String _title = 'Bottom Navigation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),

    GridViewPage(),

    Text(
      'Grades',
      style: optionStyle,
    ),

    Text(
      'Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind_rounded),
            label: 'Classroom',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Grades',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Account',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<String> className = <String>['NSTP', 'SSP', 'GEN', 'Fil', 'majorSub01', 'majorSub02', 'majorSub03'];
  final List<Widget> TEST = <Widget>[NSTP(),AdminLoginPage()]; //The amount of index here will dictate the classroom oh array classname.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: GridView.count(
      crossAxisCount: 2,
      children: List.generate(4, (index) {
        return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>TEST[index])); //This is the navigation of the classroom list on classroom in our homescreen.
            },
            child: Card(
        color: Colors.lightBlue,
        elevation: 5,
        margin: EdgeInsets.all(8),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Center(
        child: Text(
        'Class ${className[index]}',
        style: TextStyle(fontSize: 20),
        ),
        ),
            )
        );
      }),
        ));
  }
}
