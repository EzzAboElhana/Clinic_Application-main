// ignore_for_file: must_be_immutable

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/material.dart';

class CustomChooseMajor extends StatelessWidget {
  CustomChooseMajor({
    Key? key,
    required this.image,
    required this.textTitle,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String textTitle;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(image),
          Text(
            textTitle,
            style: Styles.textStyle22,
          ),
        ],
      ),
    );
  }
}
