// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_brace_in_string_interps, file_names

import 'package:flutter/material.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import 'Custom_Text_Filed.dart';

AppBar C_AppBar(
    {required search_controller, required Svg, required name_controller}) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 21, top: 20, right: 21),
      child: Container(
        height: 124,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 54,
                    height: 54,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Svg,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hello, Good Morning',
                              style: C_TextStyle(
                                  size: 10,
                                  color: ColorApp.blackColor2,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              child: Center(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Icon(
                                        Icons.notifications,
                                        color: ColorApp.blackColor,
                                        // size: 26,
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 3,
                                      child: Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            color: ColorApp
                                                .backgroundonBoardingTghree,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${name_controller}',
                          style: C_TextStyle(
                            size: 20,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text_Field_search()
                  .Text_search(search_controller: search_controller),
            ),
          ],
        ),
      ),
    ),
    titleSpacing: 00.0,
    // centerTitle: true,
    toolbarHeight: 143,
    // toolbarOpacity: 0.8,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)),
    ),
    elevation: 0.00,
    backgroundColor: Colors.transparent,
  );
}
