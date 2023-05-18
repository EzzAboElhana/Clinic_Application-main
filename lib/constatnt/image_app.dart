// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImagesApp {
  ///////////////major////////////
  static const String imDoctor = "assets/images/im_doctor.png";
  static const String imPatient = "assets/images/patient.png";
  static const String imNurse = "assets/images/im_nurse.png";
  static const String physiotherapy = "assets/images/Physiotherapy.png";
  static const String pharmacy = "assets/images/pharmacy.png";
  static const String hospital = "assets/images/Hospital.png";
  static const String medicalCenter = "assets/images/Medical_Center.png";

  ///////////////onboardingOne/////////////
  static const String onboardingStart = "assets/images/pic.png";
  static const String onboardingOne = "assets/images/on1.png";
  static const String onboardingTow = "assets/images/three.png";

  static const String photo = 'assets/images/a3.png';
  static const String Popular = 'assets/images/a4.png';
  static const String Blessing = 'assets/images/a6.png';
  static const String medical = 'assets/images/medical.png';
  static const String mdcl = 'assets/images/mdcl.png';

  static const String google = 'assets/images/google.png';
  static const String facebook = 'assets/images/facebook.png';
}

//SVG_image-----------------------------------------------------------------------------------

class SVG_image {
  final Svg = SvgPicture.asset(
    "assets/images/a2.svg",
    alignment: Alignment.bottomCenter,
    fit: BoxFit.cover,
    placeholderBuilder: (BuildContext context) => Container(
        alignment: Alignment.center, child: const CircularProgressIndicator()),
  );
}
