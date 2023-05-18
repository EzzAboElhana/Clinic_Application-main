// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';
import '../../widget/homePage/list_View.dart';

class Payment extends StatelessWidget {
  dynamic name_controller = 'Emily Kevin';
  dynamic score = '4.9';
  dynamic sub_title_controller = 'High Intensity Training';
  dynamic Date_controller = '20 October 2021 - Wednesday';
  dynamic Time_controller = '09:30 AM';
  dynamic Cost_controller = '\$ 175.99';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundWhaitColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 56, right: 134),
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
                              'PAYMENT',
                              style: C_TextStyle(
                                size: 22,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: Container(
                      height: 160,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Payment Method',
                                style: C_TextStyle(
                                  size: 17,
                                  color: ColorApp.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 115,
                                        width: 62,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: Colors.black,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Icon(Icons.add,
                                              size: 19, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        height: 115,
                                        width: 310,
                                        child: Center(
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: items_ViSA.length,
                                            itemBuilder: (context, i) {
                                              return items_ViSA[i];
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, bottom: 14, right: 24),
                    child: Row(
                      children: [
                        Text(
                          'Order Details',
                          style: C_TextStyle(
                            size: 17,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      height: 2,
                      child: New_Divider(
                          color: ColorApp.greyColor6, thickness: 1.1),
                    ),
                  ),
                  // Trainer ---------------------------------------------------------------
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, bottom: 8, right: 24),
                              child: Text(
                                'Trainer',
                                style: C_TextStyle(
                                  size: 11,
                                  color: ColorApp.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 4, right: 17),
                                              child: Text(
                                                '${name_controller}',
                                                style: C_TextStyle(
                                                  size: 15,
                                                  color: ColorApp.blackColor,
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
                                          '${sub_title_controller}',
                                          style: C_TextStyle(
                                            size: 11,
                                            color: ColorApp.blackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 21, bottom: 10, right: 24),
                                child: Container(
                                  height: 2,
                                  child: New_Divider(
                                      color: ColorApp.greyColor6,
                                      thickness: 1.1),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date',
                                    style: C_TextStyle(
                                      size: 11,
                                      color: ColorApp.blackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      '${Date_controller}',
                                      style: C_TextStyle(
                                        size: 15,
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Row(
                                  children: [
                                    Text(
                                      'Time',
                                      style: C_TextStyle(
                                        size: 11,
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      '${Time_controller}',
                                      style: C_TextStyle(
                                        size: 18,
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: Container(
                                  height: 2,
                                  child: New_Divider(
                                      color: ColorApp.greyColor6,
                                      thickness: 1.1),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 19, bottom: 18, right: 24),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Estimated Cost',
                                      style: C_TextStyle(
                                        size: 11,
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '${Cost_controller}',
                                      style: C_TextStyle(
                                        size: 15,
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 24),
                                child: Container(
                                  height: 2,
                                  child: New_Divider(
                                      color: ColorApp.greyColor6,
                                      thickness: 1.1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 136, bottom: 70, right: 21),
                    child: C_Button(name_text: 'Confirm'),
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
