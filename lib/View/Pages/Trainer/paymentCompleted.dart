// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, must_be_immutable, unnecessary_new, unnecessary_string_interpolations, avoid_types_as_parameter_names, non_constant_identifier_names, file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';

class PaymentCompleted extends StatefulWidget {
  @override
  State<PaymentCompleted> createState() => _PaymentCompletedState();
}

class _PaymentCompletedState extends State<PaymentCompleted> {
  String name = 'Emily Kevin';
  String score = '4.9';
  bool? checkbox_Card = false;
  final Date_controller = '20 October 2021 - Wednesday';
  final Time_controller = '09:30 AM';

  final Image_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundWhaitColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 122, bottom: 40),
                    child: Container(
                      height: 86,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  checkColor: Colors.black,
                                  activeColor: ColorApp.radioButtom,
                                  value: checkbox_Card,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_Card = value;
                                    });
                                  },
                                ),
                                Text(
                                  'Payment Completed!',
                                  style: C_TextStyle(
                                    size: 22,
                                    color: ColorApp.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'You’ve book a new appointment\n with your trainer.',
                                    style: C_TextStyle(
                                      size: 15,
                                      color: ColorApp.blackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Card  -------------------------------------------------------

                  Container(
                    height: 225,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorApp.greyColor6,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 16, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 8, right: 24),
                                      child: Text(
                                        'Trainer',
                                        style: C_TextStyle(
                                          size: 11,
                                          color: ColorApp.whiteColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image:
                                            ExactAssetImage(ImagesApp.Popular),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 4, right: 17),
                                            child: Text(
                                              '${name}',
                                              style: C_TextStyle(
                                                size: 15,
                                                color: ColorApp.whiteColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            width: 27,
                                            decoration: BoxDecoration(
                                                color: ColorApp.radioButtom,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: Text(
                                                '${score}',
                                                style: C_TextStyle(
                                                  size: 9,
                                                  color: ColorApp.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'High Intensity Training',
                                        style: C_TextStyle(
                                          size: 11,
                                          color: ColorApp.radioButtom,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              height: 2,
                              child: New_Divider(
                                thickness: 1.1,
                                color: Color.fromARGB(255, 73, 70, 70),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Date',
                              style: C_TextStyle(
                                size: 11,
                                color: ColorApp.whiteColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 16),
                            child: Text(
                              '${Date_controller}',
                              style: C_TextStyle(
                                size: 15,
                                color: ColorApp.whiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Time',
                            style: C_TextStyle(
                              size: 11,
                              color: ColorApp.whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${Time_controller}',
                                  style: C_TextStyle(
                                    size: 15,
                                    color: ColorApp.whiteColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 178),
                    child: C_Button(name_text: 'Done'),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
