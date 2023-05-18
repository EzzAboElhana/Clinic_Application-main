// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import 'disease_reporting.dart';

class AppointmentBookingPage extends StatelessWidget {
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
            'Appointment booking',
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
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  hintText: 'doctor is selected',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Doctor\'s job number - Auto full',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'doctor\'s name - Auto full',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Reservation time',
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
                        hintText: 'Start time',
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
                        hintText: 'End time',
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
                  hintText: 'Evaluation',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 79.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'assigned to the patient',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
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
                  hintText: 'Patient name - Auto Full',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Reservation time',
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
                        hintText: 'Start time',
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
                        hintText: 'End time',
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
                  hintText: 'Description of the disease',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 5,
                ),
                const SizedBox(height: 46),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(DiseaseReportingPage());
                  },
                  text: 'Create Patient',
                  size: 22,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
