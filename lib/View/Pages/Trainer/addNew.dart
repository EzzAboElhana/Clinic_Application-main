// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, must_be_immutable, unnecessary_new, unnecessary_string_interpolations, avoid_types_as_parametvar es, non_constant_identifier_names, file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../widget/homePage/Custom_Text_Filed.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';

class AddNew extends StatefulWidget {
  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  dynamic name_string = 'HOLDER NAME';
  dynamic id_string = '0000 0000 0000 0000';
  dynamic checkbox_Card = false;
  dynamic ID_controller = TextEditingController();
  dynamic Name_controller = TextEditingController();
  dynamic Expiry_controller = TextEditingController();
  dynamic CVC_controller = TextEditingController();
  dynamic Delete_controller = TextEditingController();
  dynamic TEXT_controller = TextEditingController();
  dynamic search_controller = TextEditingController();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57, right: 90),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorApp.blackColor,
                          ),
                          child: Icon(Icons.arrow_back_ios_new_outlined,
                              size: 19, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Container(
                            child: Text(
                              'Add New Card',
                              style: C_TextStyle(
                                size: 20,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Container(
                    height: 588,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 176,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: list_colors_VISA),
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color.fromARGB(255, 255, 232, 238),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24, right: 24, left: 16, bottom: 21),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'VISA',
                                            style: C_TextStyle(
                                              size: 35,
                                              color: ColorApp.whiteColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 4,
                                                ),
                                                child: Text(
                                                  '${name_string}',
                                                  style: C_TextStyle(
                                                    size: 15,
                                                    color: ColorApp.whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '${id_string}',
                                                style: C_TextStyle(
                                                  size: 20,
                                                  color: ColorApp.whiteColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Card Visa -------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, bottom: 18, left: 25),
                                child: Container(
                                  height: 25,
                                  width: double.infinity,
                                  child: Text_Field_3(
                                    hint_text: 'Card Holder Name',
                                    TEXT_controller: Name_controller,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                  height: 2,
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  )),
                            ],
                          ),
                        ),

                        // Card Number -------------------------------------------------------

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 39, bottom: 18, left: 25),
                          child: Container(
                            height: 25,
                            width: double.infinity,
                            child: Text_Field_3(
                              hint_text: 'Card Number',
                              TEXT_controller: ID_controller,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 2.5,
                          child: New_Divider(
                              thickness: 1.1, color: ColorApp.blackColor),
                        ),

                        // Expiry (MM/YY) -------------------------------------------------------

                        Container(
                          width: double.infinity,
                          height: 73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 39, left: 25),
                                      child: Container(
                                        height: 25,
                                        width: double.infinity,
                                        child: Text_Field_3(
                                          hint_text: 'Expiry (MM/YY)',
                                          TEXT_controller: Expiry_controller,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 39, right: 20, left: 17),
                                      child: Container(
                                        height: 25,
                                        width: double.infinity,
                                        child: Text_Field_3(
                                          hint_text: 'CVC',
                                          TEXT_controller: CVC_controller,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: New_Divider(
                                      thickness: 1.1,
                                      color: ColorApp.blackColor),
                                ),
                              ),
                              SizedBox(width: 20.5),
                              Expanded(
                                child: Container(
                                  child: New_Divider(
                                      thickness: 1.1,
                                      color: ColorApp.blackColor),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5),
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
                                'Set as default payment card',
                                style: C_TextStyle(
                                  size: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: C_Button(name_text: 'Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
