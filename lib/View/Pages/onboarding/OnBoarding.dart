// ignore_for_file: file_names

import 'package:carehealth/model/onBoarding/onboarding_model_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: (val) {
                controller.onChangePage(val);
              },
              itemCount: onBoardingList.length,
              itemBuilder: (context, i) => Container(
                child: (onBoardingList[i].child),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
