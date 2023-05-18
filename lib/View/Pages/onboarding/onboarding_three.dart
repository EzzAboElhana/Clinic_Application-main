// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:carehealth/constatnt/color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../widget/onboarding/next_bottun.dart';
import '../../widget/onboarding/skip_buttom.dart';
import '../../widget/onboarding/slider_widget.dart';

class OnboardingThree extends GetView<OnBoardingControllerImp> {
  const OnboardingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorApp.backgroundonBoardingFour.withOpacity(0.5),
                      ColorApp.backgroundWhaitColor,
                      ColorApp.backgroundWhaitColor,
                      ColorApp.backgroundonBoardingFour2.withOpacity(0.5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 0, left: 200, bottom: 0),
                        child: Container(
                            height: 350,
                            child: Image.asset("assets/images/four.png")),
                        // SvgPicture.asset(
                        //   ImagesApp.onBoarding1,
                        //   height: 150.0,
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Healthy Muscular",
                              style: Styles.textStyle40blackBebas,
                            ),
                            Text(
                              "Sportswoman",
                              style: Styles.textStyle40greenBebas,
                            ),
                            Text(
                              "Standing",
                              style: Styles.textStyle40blackBebas,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        // flex: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SkipBottumWidget(),
                              const Spacer(),
                              const SlidersWidget(),
                              const Spacer(),
                              NextButtomWidget(
                                onTap: () {
                                  // Get.to(OnBoardinTow());
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
