// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'edit_profile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1C1C1E),
      backgroundColor: Colors.white,
      appBar: AppBar(
        excludeHeaderSemantics: true,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 120,
                      // width: 300,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Image.asset(
                              'assets/images/profile_59.png',
                              // width: 10,
                              // height: 150,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Image.asset(
                              'assets/images/Ellipse 29.png',
                              width: 100,
                              // height: 150,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: SvgPicture.asset(
                              'assets/images/Ellipse 30.svg',
                              width: 100,
                              // height: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: VerticalDivider(
                          color: Color(0xff505050),
                          thickness: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        OnBoardingTextWidget(
                            text: 'your information',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff505050)),
                        OnBoardingTextWidget(
                            textDecoration: TextDecoration.underline,
                            text: 'sara@gmail.com',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        OnBoardingTextWidget(
                            text: '+11-2234-56-77',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        OnBoardingTextWidget(
                            text: 'address',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(height: 9),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'SARAH WEGAN',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                ),
              ),
              const SizedBox(height: 18),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              //Edit Profile
              InkWell(
                onTap: () {
                  Get.to(EditProfile());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OnBoardingTextWidget(
                      text: 'Edit Profile',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // My bookings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'My bookings',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // Privacy Policy
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'Privacy Policy',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // Biography
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'Biography',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // my bills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'my bills',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // my reports
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'my reports',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              // Settings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'Settings',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              // const SizedBox(height: 49),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Color(0xff2C2C2E),
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              //   child: InkWell(
              //     onTap: () {
              //       Get.to(PremiumProfile());
              //     },
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 11, vertical: 11),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.stretch,
              //         children: [
              //           Align(
              //             alignment: Alignment.topLeft,
              //             child: Container(
              //               padding: EdgeInsets.all(2),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(5),
              //                 color: Colors.red,
              //               ),
              //               child: OnBoardingTextWidget(
              //                 text: 'PRO',
              //                 fontSize: 11,
              //                 fontWeight: FontWeight.w700,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               OnBoardingTextWidget(
              //                   text: 'Upgrade to Premium',
              //                   fontSize: 17,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.white),
              //               const Icon(Icons.arrow_forward_ios_outlined,
              //                   color: Colors.white),
              //             ],
              //           ),
              //           OnBoardingTextWidget(
              //               text: 'This subscription is auto-renewable',
              //               fontSize: 13,
              //               fontWeight: FontWeight.w400,
              //               color: Colors.white),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 17),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: OnBoardingTextWidget(
                    text: "Sign Out",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
