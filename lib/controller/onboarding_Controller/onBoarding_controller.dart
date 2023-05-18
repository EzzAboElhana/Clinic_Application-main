// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore

import 'package:carehealth/view/pages/onboarding/onBoarding_start.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  nextPage();
  onChangePage(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  nextPage() {
    currentPage++;
    // ignore: prefer_const_constructors
    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  onChangePage(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
