// import 'package:carehealth/view/pages/OnBoarding.dart';
import 'package:carehealth/view/pages/onboarding/onBoarding_start.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../View/Pages/onboarding/OnBoarding.dart';
import '../constatnt/routes_app.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const OnBoardingStart(),
  ),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
];
