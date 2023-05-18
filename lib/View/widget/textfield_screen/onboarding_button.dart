// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';

class OnBoardingButton extends StatelessWidget {
  String text;
  double size;
  Function() onPressed;

  OnBoardingButton(
      {required this.text, required this.onPressed, required this.size});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.primaryColor,
          minimumSize: Size(double.infinity, 51),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: size,
              fontFamily: 'Montserrat'),
        ));
  }
}
