// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'new_products_services.dart';

class NewRequestPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
            'New Request',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: ColorApp.blackColor,
                fontFamily: 'Montserrat'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      hintText: '#ID Request',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'selection of clients/patients',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'address of the request',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Service details',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 6,
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
                        text: 'appointment,booking schedule',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 21.0, vertical: 15.0),
                child: Column(
                  children: [
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'comments',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 4,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Reservation times',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Choose the date',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'selection of clients/patients',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: OnBoardingTextFormField(
                            controller: nameController,
                            validator: () {},
                            hintText: 'Starting time',
                            keyboardType: TextInputType.name,
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 5,
                          child: OnBoardingTextFormField(
                            controller: nameController,
                            validator: () {},
                            hintText: 'Ending time',
                            keyboardType: TextInputType.name,
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'supervising physician',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Notes',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 47),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: OnBoardingButton(
                  onPressed: () {
                    Get.to(NewProductPage());
                  },
                  text: 'Create Request',
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
