// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constatnt/font_app_styles.dart';
import '../../view/pages/profile/privacy_policy.dart';

class ProfileModel {
  // Icon? icon;
  // String? title;
  Widget? child;

  ProfileModel({
    // this.icon,this.title
    this.child,
  });
}

List<ProfileModel> profileList = [
  ProfileModel(
      child: Column(
    children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            "Setting",
            textAlign: TextAlign.center,
            style: Styles.textStyle20Setting,
          )
        ],
      ),
      Divider(
        color: Colors.white,
      ),
      Row(
        children: [
          Text(
            "Units of Measure",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Notifications",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(PrivacyPolicy());
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Language",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Contact Us",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 2),
    ],
  )),
  ProfileModel(
      child: Column(
    children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            "Setting",
            textAlign: TextAlign.center,
            style: Styles.textStyle20Setting,
          )
        ],
      ),
      Divider(
        color: Colors.white,
      ),
      Row(
        children: [
          Text(
            "Units of Measure",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Notifications",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(PrivacyPolicy());
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Language",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Contact Us",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 2),
    ],
  )),
  ProfileModel(
      child: Column(
    children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            "Setting",
            textAlign: TextAlign.center,
            style: Styles.textStyle20Setting,
          )
        ],
      ),
      Divider(
        color: Colors.white,
      ),
      Row(
        children: [
          Text(
            "Units of Measure",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Notifications",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(PrivacyPolicy());
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Language",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Contact Us",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 2),
    ],
  )),
  ProfileModel(
      child: Column(
    children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            "Setting",
            textAlign: TextAlign.center,
            style: Styles.textStyle20Setting,
          )
        ],
      ),
      Divider(
        color: Colors.white,
      ),
      Row(
        children: [
          Text(
            "Units of Measure",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Notifications",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(PrivacyPolicy());
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Language",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 3),
      Row(
        children: [
          Text(
            "Contact Us",
            style: Styles.textStyle20Setting,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // Divider(color: Colors.white,height: 2),
    ],
  )),
];
