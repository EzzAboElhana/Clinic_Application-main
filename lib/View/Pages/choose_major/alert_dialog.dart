// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/font_app_styles.dart';

class AlertDailogTest extends StatelessWidget {
  const AlertDailogTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          child: Center(
              child: Text(
            "Rawy Test",
            style: Styles.textStyle22,
            textAlign: TextAlign.center,
          )),
          onWillPop: alertExitApp),
    );
  }

  Future<bool> alertExitApp() {
    Get.defaultDialog(
      content: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 35,
      ),
      titlePadding: EdgeInsets.all(20),
      title: "Your treatment session begins \n in 5 minutes",
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text("DONE"),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child: Text("Cancel"),
        ),
      ],
    );
    return Future.value(true);
  }
}
