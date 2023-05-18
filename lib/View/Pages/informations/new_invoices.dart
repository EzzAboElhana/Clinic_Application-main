// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'new_employee.dart';

class NewInvoicesPage extends StatelessWidget {
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
            'New Invoices',
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
                      hintText: '#ID Invoices',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Pay for',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Invoices address',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Date for transmission',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Payment due',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    // const SizedBox(height: 15.0),
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
                        text: 'Select Items',
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
                      hintText: 'Items',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Accounting code',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    OnBoardingTextFormField(
                      controller: nameController,
                      validator: () {},
                      hintText: 'Customer address 1',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(176, 201, 41, 0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21.0, vertical: 15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                    text: 'Subtotal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                    text: 'Discount',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                    text: 'TAX',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                    text: 'Total',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OnBoardingTextWidget(
                                    text: 'Required deposit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                                OnBoardingTextWidget(
                                    text: '\$0.00',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorApp.blackColor),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                        text: 'Message Client',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: OnBoardingButton(
                  onPressed: () {
                    Get.to(NewEmployeePage());
                  },
                  text: 'Create Invoices',
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
