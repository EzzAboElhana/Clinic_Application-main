// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'checkcircle.dart';

class Row_check extends StatefulWidget {
  String text;
  Row_check({super.key, required this.text});

  @override
  State<Row_check> createState() => _Row_checkState();
}

class _Row_checkState extends State<Row_check> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Switzer',
            // fontWeight: FontWeight.bold
          ),
        ),
        Check_Circle()
      ],
    );
  }
}
