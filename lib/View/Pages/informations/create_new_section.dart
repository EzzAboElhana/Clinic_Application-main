// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_insurance_company.dart';

class CreateNewSectionPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorApp.greenColor2,
            Colors.white,
            Colors.white,
            // ColorApp.greenColor2,
            Colors.white,
            Colors.white,
            ColorApp.greenColor2,
            ColorApp.greenColor2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: ColorApp.blackColor,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.keyboard_arrow_left, size: 35),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Create a new section',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: ColorApp.blackColor,
                fontFamily: 'Montserrat'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: ColorApp.greyColor2,
                    radius: 60,
                    child: SvgPicture.asset(
                      'assets/images/profile-edit.svg',
                      height: 130,
                    ),
                  ),
                ),
                const SizedBox(height: 3.0),
                OnBoardingTextWidget(
                    text: 'Uploade image',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorApp.primaryColor),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: '#Id Section',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Department Name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'description',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
                ),
                const SizedBox(height: 69.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(CreateInsuranceCompanyPage());
                  },
                  text: 'Create Section',
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
