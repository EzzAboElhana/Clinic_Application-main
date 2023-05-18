// ignore_for_file: file_names, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:carehealth/constatnt/color_app.dart';
import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:carehealth/constatnt/image_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';
import '../../../model/onBoarding/onboarding_model_data.dart';
import '../../widget/onboarding/custom_bottun_onboarding.dart';
import 'OnBoarding.dart';

class OnBoardingStart extends GetView<OnBoardingControllerImp> {
  const OnBoardingStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (val) {
            controller.onChangePage(val);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorApp.backgrounOnBoardingTow.withOpacity(0.5),
                  ColorApp.backgroundWhaitColor,
                  ColorApp.backgroundWhaitColor,
                  ColorApp.backgrounOnBoardingTow.withOpacity(0.5),
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
                        top: 0, right: 5, left: 15, bottom: 0),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      child: Image.asset(ImagesApp.onboardingStart),
                      // SvgPicture.asset(ImagesApp.onBoarding2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Pro ",
                              style: Styles.textStyle40black,
                            ),
                            Text(
                              "Doctors",
                              style: Styles.textStyle40green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Run the medical center \n professionally",
                          textAlign: TextAlign.center,
                          style: Styles.textStyle18black,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomBottumOnBoarding(
                          onPressed: () {
                            Get.to(const OnBoarding());
                            //controller.nextPage();
                          },
                          textTitle: ('Lets Start'),
                          color: ColorApp.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
