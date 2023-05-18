// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_declarations, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_new, unused_element, must_be_immutable, unnecessary_import, unused_import, sort_child_properties_last, file_names, unnecessary_brace_in_string_interps

import 'package:carehealth/View/widget/drawer/drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/homePage/appBar.dart';
import '../../widget/homePage/divider.dart';
import '../../widget/homePage/listControllerWidget.dart';
import '../../widget/homePage/list_View.dart';
import '../../widget/homePage/textBox.dart';
import '../accounts/my_drawer_header.dart';

class HomePage18_1 extends StatelessWidget {
  dynamic name_controller = 'Sophia !';
  dynamic book_1_controller = 'Medical Centers';
  dynamic book_2_controller = 'treatment centres';
  dynamic book_3_controller = 'Pharmacies';

  dynamic search_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: list_colors2,
        ),
      ),
      child: Scaffold(
        appBar: C_AppBar(
            search_controller: search_controller,
            Svg: SVG_image().Svg,
            name_controller: name_controller),
        backgroundColor: Colors.transparent,
        //  Appar -----------------------------------------------------------------
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 34.5, right: 34.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // photo -----------------------------------------------------------------
                  Container(
                    height: 249,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 55, bottom: 30, left: 10),
                                  child: Container(
                                    height: 160,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorApp.Color_yellow_2,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(flex: 2, child: SizedBox()),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      height: 42.18,
                                                      width: 200.37,
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'Are you in any pain ! \nFind our certfed doctor!',
                                                            style: C_TextStyle(
                                                              size: 14,
                                                              color: ColorApp
                                                                  .whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                height: 27.5,
                                                width: 110,
                                                decoration: BoxDecoration(
                                                  color: ColorApp.blackColor2,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Book Now",
                                                    style: C_TextStyle(
                                                      size: 14,
                                                      color:
                                                          ColorApp.whiteColor,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -28,
                                top: 10,
                                bottom: 22,
                                child: Container(
                                  height: 249,
                                  width: 195,
                                  child: Image.asset(
                                    ImagesApp.photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 90, left: 10),
                                  child: Container(
                                    height: 160,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(flex: 2, child: SizedBox()),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      height: 42.18,
                                                      width: 200.37,
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        children: [],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Container(
                                                height: 73.5,
                                                width: 73.5,
                                                child: Image.asset(
                                                  ImagesApp.mdcl,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // select  ---------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 12),
                    child: Container(
                      height: 69,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Select your Goal',
                                style: C_TextStyle(
                                  size: 16,
                                  color: ColorApp.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 116,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 177, 177, 177),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "${book_1_controller}",
                                    style: C_TextStyle(
                                      size: 11,
                                      color: ColorApp.greyColor5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 116,
                                  decoration: BoxDecoration(
                                    color: ColorApp.blackColor2,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "${book_2_controller}",
                                    style: C_TextStyle(
                                      size: 11,
                                      color: ColorApp.whiteColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 177, 177, 177),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "${book_3_controller}",
                                    style: C_TextStyle(
                                      size: 11,
                                      color: ColorApp.greyColor5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  // Category  --------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 28, bottom: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style: C_TextStyle(
                            size: 15,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'See all',
                          style: C_TextStyle(
                            size: 15,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items_1.length,
                        itemBuilder: (context, i) {
                          return items_1[i];
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, bottom: 20),
                    child: Container(height: 2, child: New_Divider()),
                  ),
                  // Popular  --------------------------------------------------------------
                  Container(
                    height: 270,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Doctors',
                              style: C_TextStyle(
                                size: 18,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'See all',
                              style: C_TextStyle(
                                size: 12,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        Text(
                          'Physiotherapy session for the elderly',
                          style: C_TextStyle(
                            size: 12,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'session duration',
                              style: C_TextStyle(
                                size: 10,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '|',
                              style: C_TextStyle(
                                size: 13,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.alarm,
                                size: 19,
                                color: ColorApp.backgrounOnBoardingTow),
                            Text(
                              ' 50 min',
                              style: C_TextStyle(
                                size: 10,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13, bottom: 14),
                          child: Container(
                            height: 155,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: ExactAssetImage(ImagesApp.Popular),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 20,
                                  top: 25,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Icon(Icons.heart_broken,
                                        size: 19, color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(height: 2, child: New_Divider()),
                      ],
                    ),
                  ),

                  // Wound  --------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(top: 13, bottom: 5),
                    child: Text(
                      'Wound changing and sterilization session',
                      style: C_TextStyle(
                        size: 18,
                        color: ColorApp.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        'session duration',
                        style: C_TextStyle(
                          size: 10,
                          color: ColorApp.blackColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '|',
                        style: C_TextStyle(
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w500,
                            size: 5),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.alarm,
                          size: 19, color: ColorApp.backgrounOnBoardingTow),
                      Text(
                        ' 50 min',
                        style: C_TextStyle(
                          size: 10,
                          color: ColorApp.blackColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Container(
                      height: 155,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: ExactAssetImage(ImagesApp.Popular),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 20,
                            top: 25,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(Icons.heart_broken,
                                  size: 19, color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 28, bottom: 20),
                    child: Container(height: 2, child: New_Divider()),
                  ),
                  // Meal Plans  --------------------------------------------------------------
                  Container(
                    height: 530,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Meal Plans',
                                style: C_TextStyle(
                                  size: 18,
                                  color: ColorApp.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'See all',
                                style: C_TextStyle(
                                  size: 12,
                                  color: ColorApp.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 155,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.amber,
                            image: DecorationImage(
                              image: ExactAssetImage(ImagesApp.Popular),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 20,
                                top: 25,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Icon(Icons.heart_broken,
                                      size: 19, color: Colors.red),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        // Gastric  --------------------------------------------------------------

                        Row(
                          children: [
                            Text(
                              'Gastric bypass surgery',
                              style: C_TextStyle(
                                size: 18,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '1300\$ - 2000\$',
                              style: C_TextStyle(
                                size: 13,
                                color: ColorApp.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Container(height: 2, child: New_Divider()),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 155,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: ExactAssetImage(ImagesApp.Popular),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 20,
                                    top: 25,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Icon(Icons.heart_broken,
                                          size: 19, color: Colors.red),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 11),
                            Row(
                              children: [
                                Text(
                                  'LASIK eye surgery',
                                  style: C_TextStyle(
                                    size: 18,
                                    color: ColorApp.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 18),
                              child: Row(
                                children: [
                                  Text(
                                    '1300\$ - 2000\$',
                                    style: C_TextStyle(
                                      size: 13,
                                      color: ColorApp.blackColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(height: 2, child: New_Divider()),
                          ],
                        )
                      ],
                    ),
                  ),
                  // The best doctors  --------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(top: 21, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'The best doctors',
                          style: C_TextStyle(
                            size: 18,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'See all',
                          style: C_TextStyle(
                            size: 12,
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 396,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return items_2[i];
                      },
                    ),
                  ),

                  // ================ The best doctor text ===================
                  NewTextBestDoctorTwoWidget(word: 'The best doctors'),
                  // ================= ListViews =============================
                  NewListControllerBestDoctorOneWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(height: 5, child: New_Divider()),
                  ),
                  // =============== The best doctor text ====================
                  NewTextBestDoctorTwoWidget(word: 'The best doctors'),
                  // =============== ListViews ===============================
                  NewListControllerBestDoctorTwoWidget(),
                  // ============== TwoTop card doctor rate ===============
                  NewListDoctorControllerCardWidget(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== Book npw text ===========================
                  NewTextBookNowWidget(text: 'Book Now'),
                  // =============== List Categories =========================
                  NewListControllerCategoryWidget(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== Three top card doctor rate ===========
                  NewListControllerCardTwoWidget_1(
                      screenWidth: MediaQuery.of(context).size.width),
                  // =============== List doctor per houres ===============
                  NewListControllerBestDoctorOneWidget(),
                  // =============== popular doctors text =================
                  NewTextBestDoctorTwoWidget(word: 'Popular Doctors'),
                  // =============== List detailes doctores ==============
                  NewListControllerBestDoctorPopularWidget(),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
