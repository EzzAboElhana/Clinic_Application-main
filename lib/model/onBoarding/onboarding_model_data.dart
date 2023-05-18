import 'package:flutter/cupertino.dart';
import '../../view/pages/onboarding/onboarding_one.dart';
import '../../view/pages/onboarding/onboarding_three.dart';
import '../../view/pages/onboarding/onboarding_two.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    child: const OnboardingOne(),
  ),
  OnBoardingModel(child: const OnboardingTwo()),
  OnBoardingModel(
    child: const OnboardingThree(),
  ),
];

class OnBoardingModel {
  Widget? child;

  OnBoardingModel({this.child});
}
