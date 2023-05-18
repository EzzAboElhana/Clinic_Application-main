// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class Container_wed extends StatefulWidget {
  String text;
  dynamic color;
  double fontSize;
  Container_wed(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize});

  @override
  State<Container_wed> createState() => _Container_wedState();
}

class _Container_wedState extends State<Container_wed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: widget.color),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.fontSize,
              fontFamily: 'Switzer',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
