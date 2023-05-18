// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';

class IndexWidget extends StatelessWidget {
  const IndexWidget({Key? key, required this.textTitle}) : super(key: key);
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    var isVideoSection;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          // width: 60,
          decoration: BoxDecoration(
              //color: ColorApp.darkgreenColor,
              color: isVideoSection
                  ? ColorApp.darkgreenColor.withOpacity(0.5)
                  : ColorApp.darkgreenColor,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textTitle,
                  style: Styles.textStyle18,
                )),
          ),
        ),
      ),
    );
  }
}
