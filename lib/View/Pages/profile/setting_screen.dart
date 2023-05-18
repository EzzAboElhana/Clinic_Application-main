// ignore_for_file: unnecessary_import, unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:carehealth/view/pages/profile/privacy_policy.dart';
import 'package:carehealth/view/pages/profile/unites_of_measure.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'notifications.dart';

List settingListTitle = [
  "Units of Measure",
  "Notifications",
  "Language",
  "Contact Us"
];

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2C2C2E),
        body: SafeArea(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_outlined,
                                size: 26, color: Colors.white)),
                        SizedBox(
                          width: 80,
                        ),
                        Align(
                          // alignment: Alignment.center,
                          child: Text(
                            "Setting",
                            textAlign: TextAlign.center,
                            style: Styles.textStyle20Setting,
                          ),
                        )
                      ],
                    ),
                  ),
                  // Divider(color: Colors.black,),
                  Container(
                    height: 60,
                    child: InkWell(
                      onTap: () {
                        Get.to(UnitsOfMeasure());
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingListTitle[0],
                            textAlign: TextAlign.center,
                            style: Styles.textStyle18,
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 26, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.black),
                  Container(
                    height: 60,
                    child: InkWell(
                      onTap: () {
                        Get.to(Notifications());
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingListTitle[1],
                            textAlign: TextAlign.center,
                            style: Styles.textStyle18,
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 26, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.black),
                  Container(
                    height: 60,
                    child: InkWell(
                      onTap: () {
                        Get.to(PrivacyPolicy());
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingListTitle[2],
                            textAlign: TextAlign.center,
                            style: Styles.textStyle18,
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 26, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.black),
                  Container(
                    height: 60,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingListTitle[3],
                            textAlign: TextAlign.center,
                            style: Styles.textStyle18,
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 26, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
