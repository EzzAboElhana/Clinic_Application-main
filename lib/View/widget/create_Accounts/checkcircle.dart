// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Check_Circle extends StatefulWidget {
  const Check_Circle({super.key});

  @override
  State<Check_Circle> createState() => _Check_CircleState();
}

class _Check_CircleState extends State<Check_Circle> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {}
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: CircleBorder(),
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
