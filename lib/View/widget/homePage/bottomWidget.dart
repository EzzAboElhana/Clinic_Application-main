// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import '../../../constatnt/color_app.dart';

class Bottom_1Widget extends StatelessWidget {
  final text;
  final textFont;
  const Bottom_1Widget({
    super.key,
    required this.text,
    required this.textFont,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: 55,
              width: 318,
              decoration: BoxDecoration(
                  color: ColorApp.blackBlueColor2,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: textFont,
                      color: ColorApp.whiteColor2,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Akram -------------------------------------------------------------

Widget C_Button({required name_text}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 51,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff022939),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '$name_text',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    ),
  );
}
