// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_laboratory.dart';

class ProductsPharamcyPage extends StatelessWidget {
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
            'Adding products pharamcyPage',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: ColorApp.blackColor,
                fontFamily: 'Montserrat'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 21.0, vertical: 31.0),
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
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: '#ID products',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'product name',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Product Description',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Product information',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorApp.primaryColor,
                    minimumSize: Size(318, 51),
                  ),
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: OnBoardingTextWidget(
                        text: 'Pictures of the product',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      )),
                ),
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'price \$',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
              ),
              const SizedBox(height: 92),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: OnBoardingButton(
                  onPressed: () {
                    Get.to(CreateLaboratoryPage());
                  },
                  text: 'SAVE',
                  size: 22,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
