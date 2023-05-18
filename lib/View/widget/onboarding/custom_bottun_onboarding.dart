// ignore_for_file: must_be_immutable

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/onboarding_Controller/onBoarding_controller.dart';

class CustomBottumOnBoarding extends GetView<OnBoardingControllerImp> {
  CustomBottumOnBoarding({
    Key? key,
    this.onPressed,
    required this.textTitle,
    this.color,
  }) : super(key: key);
  final void Function()? onPressed;
  final String? textTitle;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: ColorApp.backgroundWhaitColor,
        child: Text(
          textTitle!,
          style: Styles.textStyle20,
        ),
      ),
    );
  }
}
