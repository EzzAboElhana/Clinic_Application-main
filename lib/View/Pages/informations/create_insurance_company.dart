// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'create_clients.dart';

class CreateInsuranceCompanyPage extends StatelessWidget {
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
            'Create Insurance company',
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
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: '#ID Insurance',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'name of the insurance company',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Description of the insurance company',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 4,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'phone number',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'phone number 1',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'E-mail',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'official e-mail',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Country',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Address',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Address 1',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'State name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'District name',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Postal code',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextWidget(
                  text: 'Social media links for the cent',
                  fontWeight: FontWeight.w500,
                  color: ColorApp.primaryColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Website',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Facebook',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Instagram',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Twitter',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'Snapchat',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                OnBoardingTextFormField(
                  controller: nameController,
                  validator: () {},
                  hintText: 'YouTube',
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(height: 33.0),
                OnBoardingButton(
                  onPressed: () {
                    Get.to(CreateClientsPage());
                  },
                  text: 'SAVE',
                  size: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
