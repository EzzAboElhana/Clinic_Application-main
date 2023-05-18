// ignore_for_file: prefer_const_constructors, file_names, annotate_overrides, sized_box_for_whitespace, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/homeController.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/reviewsListWidget.dart';

class TrainerDetail extends StatelessWidget {
  TrainerDetail({super.key});
  final ScrollController extController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //===================== AppBar Widget =====================================
        appBar: ScrollAppBar(
          elevation: 0.0,
          backgroundColor: ColorApp.whiteColor2,
          centerTitle: true,
          toolbarHeight: 249.0,
          title: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 29, left: 8.0),
                  height: 217,
                  child: Image.asset(
                    'assets/images/doctor.png',
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          leading: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 57.0, left: 15.0),
                child: CircleAvatar(
                  backgroundColor: ColorApp.blackColor2.withOpacity(0.2),
                  maxRadius: 40.0,
                  minRadius: 40.0,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(left: 7.0),
                        child: Icon(Icons.arrow_back_ios,
                            color: ColorApp.whiteColor2)),
                  ),
                ),
              )
            ],
          ),
          controller: extController,
        ),
        body: Container(
          color: ColorApp.whiteColor2,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 55.0,
                //================ Name the doctor ===================================
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Jennifer James",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans',
                              letterSpacing: 1.3),
                        ),
                        Text(
                          'Functional Strength',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSans',
                              letterSpacing: 1.3),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    // ============================ Call ==============================
                    CircleAvatar(
                      backgroundColor: ColorApp.blackBlueColor2,
                      maxRadius: 28.0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(left: 3.0),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              color: ColorApp.whiteColor2,
                              size: 30,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundColor: ColorApp.radioButtom,
                      maxRadius: 28.0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(left: 3.0),
                            child: Icon(
                              Icons.phone_sharp,
                              color: ColorApp.blackBlueColor2,
                              size: 30,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // ======================== Box Experinec ===============================
              BoxBottom_1(),
              // ======================== Reviews Text ====================================
              ReviewsText(),
              // ================= Count images Reviews ===================================
              CountReviews(),
              // ================= Reviews ListWidget ====================================
              ReviewsListCommenets(
                  axis: Axis.horizontal,
                  height: 146.0,
                  leftMar: 10.0,
                  bottomMar: 0.0),
              // ================= Bottom Widget ======================================
              Bottom_1Widget(text: 'Book an Appointment', textFont: 'OpenSans'),
              SizedBox(
                height: 47.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// =================== Count images reviews =========================
class CountReviews extends StatelessWidget {
  const CountReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = 135;
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      margin: EdgeInsets.only(right: 25.0),
      height: 55.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Container(
                height: 45.0,
                width: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: width - 5,
                      child: Container(
                        width: 35.0,
                        child: CircleAvatar(
                          backgroundColor: ColorApp.radioButtom,
                          child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Center(
                                  child: Text(
                                '${controller.reviewsList.length}',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'OpenSans'),
                              ))),
                        ),
                      ),
                    ),
                    for (int i = 4; i > 0; i--) ...[
                      Positioned(
                        left: width - i * 25,
                        child: Container(
                          width: 35.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              controller.reviewsList[4 - i]['image'],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
          InkWell(
            child: Container(
              child: Center(
                child: Text(
                  'Read all reviews',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                      color: ColorApp.blackColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= Reviews Text =====================================
class ReviewsText extends StatelessWidget {
  const ReviewsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'Reviews',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 1.3,
                  color: ColorApp.blackColor2),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            height: 16.0,
            width: 33.0,
            decoration: BoxDecoration(
              color: ColorApp.blackBlueColor2,
            ),
            child: Center(
                child: Text(
              '4.6',
              style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'OpenSans',
                  letterSpacing: 1.3,
                  color: ColorApp.blackColor2),
            )),
          ),
        ],
      ),
    );
  }
}

// ==================== Box Experience ============================
class BoxBottom_1 extends StatelessWidget {
  const BoxBottom_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      height: 86,
      decoration: BoxDecoration(
          color: ColorApp.blackBlueColor2,
          borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '6',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Experience',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans'),
              ),
            ],
          ),
          VerticalDivider(
              color: ColorApp.backgroundWhaitColor,
              thickness: 1.0,
              endIndent: 15.0,
              indent: 15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '46',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Completed',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans'),
              ),
            ],
          ),
          VerticalDivider(
              color: ColorApp.backgroundWhaitColor,
              thickness: 1.0,
              endIndent: 15.0,
              indent: 15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '25',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Active Clients',
                style: TextStyle(
                    color: ColorApp.whiteColor2,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
