// ignore_for_file: file_names, prefer_const_constructors, camel_case_types, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';

import '../../../controller/homeController.dart';
import 'bestDoctor.dart';
import 'cardDoctor.dart';
import 'list_View.dart';

// =============== List detailes doctores ==============
class NewListControllerBestDoctorPopularWidget extends StatelessWidget {
  const NewListControllerBestDoctorPopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(bottom: 30.0),

          height: 263,
          width: double.infinity,
          // color: Colors.grey,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, index) {
              return NewWidgetBestDoctorTwo(
                image: controller.bestDoctorList[index]['image2'],
                name: controller.bestDoctorList[index]['name2'],
                title: controller.bestDoctorList[index]['title'],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

// =============== List doctor per houres ===============
class NewListControllerBestDoctorOneWidget extends StatelessWidget {
  const NewListControllerBestDoctorOneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(bottom: 15.0),
          height: 133,
          width: double.infinity,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, index) {
              return NewWidgetBestDoctorOne_1(
                num: controller.bestDoctorList[index]['numfav'],
                image: controller.bestDoctorList[index]['image'],
                hour: controller.bestDoctorList[index]['hour'],
                name: controller.bestDoctorList[index]['name'],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

// =============== Three top card doctor rate ===========
class NewListControllerCardTwoWidget extends StatelessWidget {
  const NewListControllerCardTwoWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.all(10.0),
          height: 490,
          width: screenWidth,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, i) {
              return NewCardDoctorWidgetTwo(
                name: controller.bestDoctorList[0 + i]['name2'],
                title: controller.bestDoctorList[0 + i]['title'],
                num: controller.bestDoctorList[0 + i]['numfav'],
                coun: controller.bestDoctorList[0 + i]['coun'],
                year: controller.bestDoctorList[0 + i]['year'],
                rech: controller.bestDoctorList[0 + i]['rech'],
                time: controller.bestDoctorList[0 + i]['timeavail'],
                image: controller.bestDoctorList[0 + i]['image2'],
              );
            },
          ),
        );
      },
    );
  }
}

class NewListControllerCardTwoWidget_1 extends StatelessWidget {
  const NewListControllerCardTwoWidget_1({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 490,
          width: screenWidth,
          child: Column(
            children: [
              for (int i = 0; i < 3; i++) ...[
                NewCardDoctorWidgetTwo_1(
                  name: controller.bestDoctorList[0 + i]['name2'],
                  title: controller.bestDoctorList[0 + i]['title'],
                  num: controller.bestDoctorList[0 + i]['numfav'],
                  coun: controller.bestDoctorList[0 + i]['coun'],
                  year: controller.bestDoctorList[0 + i]['year'],
                  rech: controller.bestDoctorList[0 + i]['rech'],
                  time: controller.bestDoctorList[0 + i]['timeavail'],
                  image: controller.bestDoctorList[0 + i]['image2'],
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

// ============== TwoTop card doctor rate ===============

class NewListDoctorControllerCardWidget extends StatelessWidget {
  const NewListDoctorControllerCardWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 230,
          width: screenWidth,
          child: Column(
            children: [
              for (int i = 0; i < 2; i++) ...[
                NewCardDoctorWidget(
                  name: controller.bestDoctorList[0 + i]['name2'],
                  title: controller.bestDoctorList[0 + i]['title'],
                  num: controller.bestDoctorList[0 + i]['numfav'],
                  image: controller.bestDoctorList[0 + i]['image2'],
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

// =============== Two top list of doctores title and rate ==================
class NewListDoctorControllerCardWidgetThree extends StatelessWidget {
  const NewListDoctorControllerCardWidgetThree({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.all(10.0),
          height: 230,
          width: screenWidth,
          child: Column(
            children: [
              for (int i = 0; i < 2; i++) ...[
                NewCardDoctorWidgetThree(
                  name: controller.bestDoctorList[0 + i]['name2'],
                  title: controller.bestDoctorList[0 + i]['title'],
                  num: controller.bestDoctorList[0 + i]['numfav'],
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}

// =============== ListViews ===============================
class NewListControllerBestDoctorTwoWidget extends StatelessWidget {
  const NewListControllerBestDoctorTwoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(bottom: 15.0),
          color: Colors.transparent,
          height: 263,
          width: double.infinity,
          // color: Colors.grey,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, index) {
              return NewWidgetBestDoctorTwo(
                image: controller.bestDoctorList[index]['image2'],
                name: controller.bestDoctorList[index]['name2'],
                title: controller.bestDoctorList[index]['title'],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

// ================= ListViews =============================
class NewListControllerPoplularDoctorWidget extends StatelessWidget {
  const NewListControllerPoplularDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(left: 26.0, right: 26.0, bottom: 30.0),

          height: 160,
          width: 80,
          // color: Colors.grey,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, index) {
              return NewWidgetBestDoctorOne_1(
                num: controller.bestDoctorList[index]['numfav'],
                image: controller.bestDoctorList[index]['image'],
                hour: controller.bestDoctorList[index]['hour'],
                name: controller.bestDoctorList[index]['name'],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

class NewListControllerBestDoctorWidget_1 extends StatelessWidget {
  const NewListControllerBestDoctorWidget_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(left: 26.0, right: 26.0, bottom: 30.0),

          height: 200,
          width: 170,
          // color: Colors.grey,
          child: ListView.builder(
            itemCount: controller.bestDoctorList.length,
            itemBuilder: (context, index) {
              return NewWidgetBestDoctorOne(
                num: controller.bestDoctorList[index]['rate'],
                image: controller.bestDoctorList[index]['image2'],
                title: controller.bestDoctorList[index]['title'],
                name: controller.bestDoctorList[index]['name'],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

// =============== List Categories =========================
class NewListControllerCategoryWidget extends StatelessWidget {
  const NewListControllerCategoryWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Stack(
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.only(left: 60.0),
                margin: EdgeInsets.only(bottom: 10.0),
                height: 35,
                width: screenWidth,
                child: ListView.builder(
                  itemCount: controller.bestDoctorList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 5.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: ColorApp.greyColor,
                      ),
                      child: Center(
                        child: Text(
                          'Category',
                          style: TextStyle(
                              color: ColorApp.greyColor5,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Container(
              height: 35,
              width: 45,
              margin: EdgeInsets.only(left: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: ColorApp.greyColor,
              ),
              child: Center(
                child: Text(
                  'All',
                  style: TextStyle(
                      color: ColorApp.greyColor5,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class NewGridControllerWidget extends StatelessWidget {
  const NewGridControllerWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            height: 400.0,
            width: screenWidth,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.bestDoctorList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return NewWidgetBestDoctorThree(
                  title: controller.bestDoctorList[index]['title'],
                  image: controller.bestDoctorList[index]['image'],
                  name: controller.bestDoctorList[index]['name'],
                  num: controller.bestDoctorList[index]['numfav'],
                  like: controller.bestDoctorList[index]['like'],
                );
              },
            ));
      },
    );
  }
}

// homePage18_3  GridView  -------------------------------------------------------------

Widget C_GridView_1() {
  return Container(
    width: double.infinity,
    height: 140,
    child: GridView.count(
      crossAxisSpacing: 5,
      childAspectRatio: 1.7,
      mainAxisSpacing: 1,
      crossAxisCount: 4,
      children: [
        Column(children: [items_2_Page_3[1]]),
        Column(children: [items_2_Page_3[2]]),
        Column(children: [items_2_Page_3[3]]),
        Column(children: [items_2_Page_3[4]]),
        Column(children: [items_2_Page_3[5]]),
        Column(children: [items_2_Page_3[6]]),
        Column(children: [items_2_Page_3[2]]),
      ],
    ),
  );
}

// homePage18_3 GridView  -------------------------------------------------------------

Widget C_GridView_2() {
  return Container(
    width: double.infinity,
    height: 160,
    child: GridView.count(
      crossAxisSpacing: 5,
      childAspectRatio: 1.7,
      mainAxisSpacing: 1,
      crossAxisCount: 4,
      children: [
        Column(children: [items_2_Page_3[1]]),
        Column(children: [items_2_Page_3[2]]),
        Column(children: [items_2_Page_3[3]]),
        Column(children: [items_2_Page_3[4]]),
        Column(children: [items_2_Page_3[5]]),
        Column(children: [items_2_Page_3[6]]),
      ],
    ),
  );
}
