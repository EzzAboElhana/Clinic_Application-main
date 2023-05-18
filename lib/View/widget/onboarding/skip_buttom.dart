// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../pages/onboarding/center_information.dart';
//
// import '../../pages/onboarding/center_information.dart';

class SkipBottumWidget extends StatelessWidget {
  const SkipBottumWidget({Key? key, this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            //  Get.to(CenterInformationPage());
          },
          child: const Text(
            "Skip",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
