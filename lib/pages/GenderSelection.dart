import 'package:flutter/material.dart/';

const List<Widget> gender = <Widget>[
  Text('Male'),
  Text('Female'),
];

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  final List<bool> _selectedGender = <bool> [true, false];
  bool vertical = false;

  @override
  Widget build(BuildContext context) {

    var theme;
    return Scaffold(
        body: Center(
        child: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        const SizedBox(height: 20),
    // ToggleButtons with icons only.
    Text('Icon-only', style: theme.textTheme.titleSmall),
    const SizedBox(height: 5),
    ToggleButtons(
    direction: vertical ? Axis.vertical : Axis.horizontal,
    onPressed: (int index) {
    setState(() {
    // The button that is tapped is set to true, and the others to false.
    for (int i = 0; i < _selectedGender.length; i++) {
    _selectedGender[i] = i == index;
    }
    });
    },
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    selectedBorderColor: Colors.blue[700],
    selectedColor: Colors.white,
    fillColor: Colors.blue[200],
    color: Colors.blue[400],
    isSelected: _selectedGender,
    children: gender,
    ),
        ],
    ),
    )
        )
    );
  }
}
