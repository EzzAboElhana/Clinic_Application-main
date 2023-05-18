// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/homeController.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';

class AppSetting extends StatelessWidget {
  AppSetting({super.key});

  final HomeController extController =
      Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorApp.whiteColor,
      //================== AppBar ==========================
      appBar: AppBar(
        // =============== Remove Screen Window ===============
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),

        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorApp.whiteColor),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        ),
        centerTitle: true,
        elevation: 0,
        shadowColor: ColorApp.whiteColor,
        backgroundColor: ColorApp.whiteColor,
        titleTextStyle: TextStyle(
            color: ColorApp.blackColor2,
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'BebasNeue'),
        title: Text(
          'App Setting',
        ),
        leading: InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorApp.blackColor2,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)),
          color: ColorApp.whiteColor,
        ),
        // =========== ListView Widget ================================
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: LeftRowWidget(
                  text: 'Reminder', icon: Icons.notifications_none),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: LeftRowWidget(
                  text: 'Change Password', icon: Icons.lock_outlined),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftRowWidget(
                      text: 'Apple Health', icon: Icons.favorite_outline),
                  Expanded(child: SizedBox()),
                  Transform.scale(
                    scale: 1,
                    child: CupertinoSwitch(
                      trackColor: ColorApp.greyColor4,
                      activeColor: ColorApp.greenColor2,
                      // thumbColor:c_Icon_3 ,
                      value: extController.notify_1,
                      onChanged: (bool value) {
                        extController.notify_1 = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftRowWidget(
                      text: 'Dark Mode', icon: Icons.dark_mode_outlined),
                  Expanded(child: SizedBox()),
                  Transform.scale(
                    scale: 1,
                    child: CupertinoSwitch(
                      trackColor: ColorApp.greyColor4,
                      activeColor: ColorApp.greenColor2,
                      // thumbColor:c_Icon_3 ,
                      value: extController.notify_2,
                      onChanged: (bool value) {
                        extController.notify_2 = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                children: [
                  LeftRowWidget(text: 'Language', icon: Icons.language),
                  Expanded(child: SizedBox()),
                  Text('English')
                ],
              ),
            ),
            NewDividerWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            //=====================upgrade ===============================
            Container(
              margin:
                  EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 120),
              height: 93,
              width: 317,
              // color: Colors.amber,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorApp.greyColor6,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    height: 22,
                    width: 37,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorApp.redColor,
                    ),
                    child: Center(
                      child: Text(
                        'PRO',
                        style: TextStyle(
                            color: ColorApp.whiteColor2,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'OpenSans'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Upgrade to Premium',
                          style: TextStyle(
                              color: ColorApp.whiteColor2,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans'),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorApp.whiteColor2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'This subscription is auto-renewable',
                      style: TextStyle(
                          color: ColorApp.whiteColor2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'OpenSans'),
                    ),
                  ),
                ],
              ),
            ),
            // ================ Bottom Widget ==================================
            Bottom_1Widget(text: 'Upgrade premium', textFont: 'BebasNeue'),
            SizedBox(
              height: 20.0,
            ),
            // ============= Version Text =====================================
            Center(child: Text('Version 1.0')),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

//================ LeftRowWidget =========================
class LeftRowWidget extends StatelessWidget {
  //============== Required Varaibles =======================
  final text;
  final IconData icon;

  const LeftRowWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: ColorApp.blackColor2,
          size: 30,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          selectionColor: ColorApp.blackColor2,
        ),
        SizedBox(width: 100)
      ],
    );
  }
}
