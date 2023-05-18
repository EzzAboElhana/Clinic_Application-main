// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'edit_profile.dart';

class PremiumProfile extends StatelessWidget {
  const PremiumProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      appBar: AppBar(
        // excludeHeaderSemantics: true,
        // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
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
                              'assets/images/Ellipse 31.svg',
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
                            text: 'joined',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        OnBoardingTextWidget(
                            text: '2 mon ago',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        const SizedBox(height: 16),
                        OnBoardingTextWidget(
                            text: 'Pro Member',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                        OnBoardingTextWidget(
                            text: 'Until 18 Jul 2022',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        OnBoardingTextWidget(
                            text: '12 Months Subscription',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
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
                  'SARAH\nWEGAN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
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
                      color: Colors.white,
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.white),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'Privacy Policy',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.white),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTextWidget(
                    text: 'Settings',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.white),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 181),
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
