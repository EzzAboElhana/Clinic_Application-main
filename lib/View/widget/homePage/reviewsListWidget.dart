// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/homeController.dart';

class ReviewsListCommenets extends StatelessWidget {
  final Axis axis;
  final double height;
  final double leftMar;
  final double bottomMar;
  const ReviewsListCommenets({
    super.key,
    required this.axis,
    required this.height,
    required this.leftMar,
    required this.bottomMar,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(
            left: 10,
            top: 30.0,
            bottom: 30.0,
          ),
          height: height,
          width: MediaQuery.of(context).size.width - 50,
          child: ListView.builder(
            shrinkWrap: false,
            scrollDirection: axis,
            itemCount: controller.reviewsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: leftMar, bottom: bottomMar),
                width: MediaQuery.of(context).size.width - 50,
                height: 144,
                decoration: BoxDecoration(
                  color: ColorApp.greyColor6,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
                      // padding: EdgeInsets.only(right: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            maxRadius: 19,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                                controller.reviewsList[index]['image']),
                          ),
                          Text(
                            controller.reviewsList[index]['name'],
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'OpenSans',
                                letterSpacing: 1,
                                color: ColorApp.whiteColor2),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            height: 13,
                            width: 27,
                            decoration: BoxDecoration(
                                color: ColorApp.radioButtom,
                                borderRadius: BorderRadius.circular(3.0)),
                            child: Center(
                              child: Text(
                                controller.reviewsList[index]['rate'],
                                style: TextStyle(
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'OpenSans',
                                    letterSpacing: 1,
                                    color: ColorApp.blackBlueColor2),
                              ),
                            ),
                          ),
                          Expanded(child: Text('')),
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            child: Text(
                              '${controller.reviewsList[index]['date']} ago',
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'OpenSans',
                                  letterSpacing: 1,
                                  color: ColorApp.whiteColor2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width - 110,
                        child: Center(
                          child: Text(
                            controller.reviewsList[index]['comment'],
                            style: TextStyle(
                                color: ColorApp.whiteColor2,
                                fontSize: 14.5,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSans'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
