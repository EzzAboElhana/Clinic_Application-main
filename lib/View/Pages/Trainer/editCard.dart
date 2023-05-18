// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, must_be_immutable, unnecessary_new, unnecessary_string_interpolations, non_constant_identifier_names, unnecessary_brace_in_string_interps, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../widget/homePage/Custom_Text_Filed.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';

class EditCard extends StatelessWidget {
  dynamic name_string = 'MEGAN SUSAN';
  dynamic id_string = '5124 3256 6589 2048';
  final ID_controller = TextEditingController();
  final Name_controller = TextEditingController();
  final Expiry_controller = TextEditingController();
  final CVC_controller = TextEditingController();
  final Delete_controller = TextEditingController();
  final TEXT_controller = TextEditingController();
  final Button_controller = TextEditingController();

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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 57, right: 134),
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
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Icon(Icons.arrow_back_ios_new_outlined,
                                  size: 19, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 78),
                            child: Container(
                              child: Text(
                                'Edit Card',
                                style: C_TextStyle(
                                  size: 22,
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
                                        top: 24,
                                        right: 24,
                                        left: 16,
                                        bottom: 21),
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
                                                fontWeight: FontWeight.bold,
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                    bottom: 4,
                                                  ),
                                                  child: Text(
                                                    '${name_string}',
                                                    style: C_TextStyle(
                                                      size: 15,
                                                      color:
                                                          ColorApp.whiteColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '${id_string}',
                                                  style: C_TextStyle(
                                                    size: 20,
                                                    color: ColorApp.whiteColor,
                                                    fontWeight: FontWeight.w600,
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
                                      top: 32, bottom: 7, left: 17),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Card Holder Name',
                                        style: C_TextStyle(
                                          size: 14,
                                          color: ColorApp.blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15, left: 17),
                                  child: Container(
                                    height: 25,
                                    width: double.infinity,
                                    child: Text_Field_2(
                                      hint_text: 'Megan Susan',
                                      TEXT_controller: Name_controller,
                                      color: Color.fromARGB(255, 177, 177, 177),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 3,
                                  child: New_Divider(
                                      color: ColorApp.greyColor6,
                                      thickness: 1.1),
                                ),
                              ],
                            ),
                          ),

                          // Card Number -------------------------------------------------------

                          Padding(
                            padding: const EdgeInsets.only(
                                top: 22, bottom: 7, left: 17),
                            child: Row(
                              children: [
                                Text(
                                  'Card Number',
                                  style: C_TextStyle(
                                    size: 14,
                                    color: ColorApp.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 17),
                            child: Container(
                              height: 25,
                              width: double.infinity,
                              child: Text_Field_2(
                                  hint_text: '5124 -  3256 - 6589 - 2048',
                                  TEXT_controller: ID_controller,
                                  color: Color.fromARGB(255, 177, 177, 177)),
                            ),
                          ),
                          Container(
                            height: 2,
                            child: New_Divider(
                                color: ColorApp.greyColor6, thickness: 1.1),
                          ),
                          // Expiry (MM/YY) -------------------------------------------------------

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 22, bottom: 7, left: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Expiry (MM/YY)',
                                              style: C_TextStyle(
                                                size: 14,
                                                color: ColorApp.blackColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 120, left: 17),
                                        child: Container(
                                          height: 25,
                                          width: double.infinity,
                                          child: Text_Field_2(
                                            hint_text: '01 - 23',
                                            TEXT_controller: Expiry_controller,
                                            color: Color.fromARGB(
                                                255, 177, 177, 177),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 22, bottom: 7, left: 27),
                                        child: Row(
                                          children: [
                                            Text(
                                              'CVC',
                                              style: C_TextStyle(
                                                size: 14,
                                                color: ColorApp.blackColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 27),
                                        child: Container(
                                          height: 25,
                                          width: double.infinity,
                                          child: Text_Field_2(
                                            hint_text: '696',
                                            TEXT_controller: CVC_controller,
                                            color: Color.fromARGB(
                                                255, 177, 177, 177),
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
                                      child: Divider(
                                    color: ColorApp.greyColor6,
                                    thickness: 1.1,
                                  )),
                                ),
                                SizedBox(width: 20.5),
                                Expanded(
                                  child: Container(
                                    child: New_Divider(
                                        color: ColorApp.greyColor6,
                                        thickness: 1.1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 12, left: 19),
                                child: Container(
                                  height: 25,
                                  width: double.infinity,
                                  child: Text_Field_2(
                                    hint_text: ' ',
                                    TEXT_controller: TEXT_controller,
                                    color: Color.fromARGB(255, 177, 177, 177),
                                  ),
                                ),
                              ),
                              Container(
                                height: 2,
                                child: New_Divider(
                                    color: ColorApp.greyColor6, thickness: 1.1),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 20, left: 6),
                                child: Container(
                                  height: 25,
                                  width: double.infinity,
                                  child: Text_Field_2(
                                    hint_text: 'Delete Card',
                                    TEXT_controller: Delete_controller,
                                    color: ColorApp.Color_red,
                                  ),
                                ),
                              ),
                              Container(
                                height: 2,
                                child: New_Divider(
                                    color: ColorApp.greyColor6, thickness: 1.1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 73, bottom: 70),
                    child: C_Button(name_text: 'Save'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
