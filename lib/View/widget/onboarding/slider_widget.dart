import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';
import '../../../model/onBoarding/onboarding_model_data.dart';

class SlidersWidget extends StatelessWidget {
  const SlidersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                      margin: const EdgeInsets.only(right: 5),
                      duration: const Duration(milliseconds: 500),
                      width: controller.currentPage == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.currentPage == index
                              ? ColorApp.greenColor
                              : ColorApp.primaryColor),
                    ))
          ],
        ),
      ),
    );
  }
}
