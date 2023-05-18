// ignore_for_file: prefer_const_constructors, unused_import

import 'package:carehealth/View/Pages/home_page/homePage18_1.dart';
import 'package:carehealth/View/Pages/home_page/homePage18_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'View/Pages/accounts/create_accounts.dart';
import 'View/Pages/choose_major/alert_dialog.dart';
import 'View/Pages/choose_major/choose_major.dart';
import 'View/Pages/accounts/appointment.dart';
import 'View/Pages/accounts/invoice_page.dart';
import 'View/Pages/accounts/my_drawer_header.dart';
import 'View/Pages/accounts/profile_drawer.dart';
import 'View/Pages/accounts/verify_account.dart';
import 'View/Pages/accounts/write__review.dart';
import 'View/Pages/accounts/login_page.dart';
import 'View/Pages/home_page/home-page.dart';
import 'View/Pages/informations/adding_products_pharmacy.dart';
import 'View/Pages/informations/appointment_booking.dart';
import 'View/Pages/informations/center_information.dart';
import 'View/Pages/informations/new_doctor.dart';
import 'View/Pages/onboarding/onBoarding_start.dart';
import 'View/Pages/onboarding/onboarding_one.dart';
import 'View/Pages/onboarding/onboarding_three.dart';
import 'View/Pages/onboarding/onboarding_two.dart';
import 'View/Pages/profile/edit_profile.dart';
import 'View/Pages/profile/notifications.dart';
import 'constatnt/color_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ],
            breakpointsLandscape: [
              const ResponsiveBreakpoint.resize(560, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
              const ResponsiveBreakpoint.resize(1024, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1120, name: TABLET),
            ]);
      },
      debugShowCheckedModeBanner: false,
      title: 'Clinic_app',
      color: ColorApp.backgroundYallowColor,
      //
      home: HomePage18_3(),
    );
  }
}
