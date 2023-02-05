import 'package:ACE/Subjects/classroommajorSub01.dart';
import 'package:ACE/adminlogin_page.dart';
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
    Account(),
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
  final List<Widget> TEST = <Widget>[SUB1(),AdminLoginPage()]; //The amount of index here will dictate the classroom oh array classname.
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

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(55)),
                child: const Icon(
                  Icons.person_outline_rounded,
                  size: 150,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                // margin: const EdgeInsets.symmetric(horizontal: 55),
                padding:
                const EdgeInsets.symmetric(horizontal: 120, vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  'Personal Info',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 31),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Student Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 62, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Phinma Email',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Student ID',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      const Text(
                        'ID Number',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),

                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 59, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Home Address',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 59, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 85, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'College',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      const Text(
                        'Department',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 87, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Course',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),

                      const Text(
                        'Course',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Logout action
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}
