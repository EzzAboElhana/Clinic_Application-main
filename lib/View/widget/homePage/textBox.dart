// ignore_for_file: prefer_const_constructors, unused_local_variable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../../constatnt/color_app.dart';

class NewTextBestDoctorTwoWidget extends StatelessWidget {
  final word;
  const NewTextBestDoctorTwoWidget({
    super.key,
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      margin: EdgeInsets.only(top: 21.0, left: 5, right: 5),
      height: 58.0,
      width: double.infinity,
      child: isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  word,
                  style: TextStyle(
                      color: ColorApp.blackColor,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: ColorApp.blackColor2,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  word,
                  style: TextStyle(
                      color: ColorApp.blackColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: ColorApp.blackColor2,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
    );
  }
}

class NewTextBookNowWidget extends StatelessWidget {
  final text;
  const NewTextBookNowWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      margin: EdgeInsets.all(10.0),
      child: isDesktop
          ? Text(
              text,
              style: TextStyle(
                  color: ColorApp.blackColor,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500),
            )
          : Text(
              text,
              style: TextStyle(
                  color: ColorApp.blackColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
    );
  }
}
