// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:carehealth/constatnt/image_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/choose_major/custom_choose_major.dart';
import 'alert_dialog.dart';

class ChooseMajor extends StatelessWidget {
  ChooseMajor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorApp.backgroundonBoardingFour.withOpacity(0.5),
                        ColorApp.backgroundWhaitColor.withOpacity(0.0),
                        ColorApp.backgroundWhaitColor.withOpacity(0.0),
                        ColorApp.backgroundonBoardingFour2.withOpacity(0.5),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      children: [
                        const Text(
                          "Pick one up to start now!",
                          textAlign: TextAlign.center,
                          style: Styles.textStyle22,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(AlertDailogTest());
                          },
                          child: Column(
                            children: [
                              Image.asset(ImagesApp.medicalCenter),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            CustomChooseMajor(
                              image: ImagesApp.imDoctor,
                              textTitle: "I'm a Doctor'",
                              onTap: () {},
                            ),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.imNurse,
                              textTitle: "I'm a imNurse",
                              onTap: () {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomChooseMajor(
                                onTap: () {},
                                image: ImagesApp.physiotherapy,
                                textTitle: "Physiotherapy"),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.pharmacy,
                              textTitle: "pharmacy",
                              onTap: () {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomChooseMajor(
                              image: ImagesApp.hospital,
                              textTitle: "hospital",
                              onTap: () {},
                            ),
                            Spacer(),
                            CustomChooseMajor(
                              image: ImagesApp.pharmacy,
                              textTitle: "Medical_Center",
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
