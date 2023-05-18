// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'color_app.dart';

abstract class Styles {
  static const textStyle40black = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: 'Switzer',
      color: Colors.black);
  static const textStyle30black = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: 'Switzer',
      color: Colors.black);

  static const textStyle40green = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: 'Switzer',
      color: ColorApp.greenColor);
  static const textStyle40blackBebas = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w400,
      fontFamily: 'Bebas',
      color: Colors.black);
  static const textStyle40greenBebas = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w400,
      fontFamily: 'Bebas',
      color: ColorApp.greenColor);
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: "Bebas Neue",
  );
  static const textStyle20Setting = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: "DEMO",
    color: Colors.white,
  );
  static const textStyle22 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: "Switzer",
    color: Colors.black,
  );

  static const textStyle18 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontFamily: 'Switzer',
      color: ColorApp.backgroundWhaitColor);
  static const textStyle18black = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontFamily: 'Switzer',
      color: Colors.black);

  static const textStyleprivacy = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: 'Switzer',
    color: ColorApp.backgroundWhaitColor,
    height: 2,
  );
  static const textStyleGrey = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Bebas',
      color: Colors.grey);
  static const textStyleGreen = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Switzer',
      color: ColorApp.darkgreenColor);
  static const textStyleBlack = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Switzer',
      color: Colors.black38);

  static const textStyle10black = TextStyle(
    color: ColorApp.blackColor2,
    fontSize: 10,
    letterSpacing: .3,
    fontFamily: 'Switzer',
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();

//  A ----------------------------------------------------------------------------

TextStyle C_TextStyle({double size = 10, color, fontWeight}) {
  return TextStyle(
    color: color,
    fontSize: size,
    letterSpacing: .3,
    fontFamily: 'Switzer',
    fontWeight: fontWeight,
  );
}
