// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:carehealth/constatnt/color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/image_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';
import '../../widget/onboarding/next_bottun.dart';
import '../../widget/onboarding/skip_buttom.dart';
import '../../widget/onboarding/slider_widget.dart';
import 'onboarding_two.dart';

class OnboardingOne extends GetView<OnBoardingControllerImp> {
  const OnboardingOne({Key? key}) : super(key: key);

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
                    ColorApp.backgroundYallowColor.withOpacity(0.5),
                    ColorApp.backgroundWhaitColor,
                    ColorApp.backgroundWhaitColor,
                    ColorApp.backgroundYallowColor.withOpacity(0.5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        child: Image.asset(ImagesApp.onboardingOne),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Shot Strong",
                            style: Styles.textStyle40black,
                          ),
                          Text(
                            "Pro Docto ",
                            style: Styles.textStyle40green,
                          ),
                          Text(
                            "Medical",
                            style: Styles.textStyle40black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
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
                                Get.to(const OnboardingTwo());
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
    ));
  }
}
