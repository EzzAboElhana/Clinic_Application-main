// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, unnecessary_import, avoid_unnecessary_containers, file_names, unnecessary_question_mark

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../constatnt/color_app.dart';

//======Akram Page- 1 =========================================================

Widget list_V_1({
  required String? name,
  required dynamic name_image,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          child: Image.asset('assets/images/$name_image'),
        ),
        SizedBox(height: 10),
        Text(
          '$name',
          style: TextStyle(
              color: ColorApp.blackColor,
              fontFamily: 'Switzer',
              fontWeight: FontWeight.w500,
              fontSize: 12),
        ),
      ],
    ),
  );
}
//====== Page- 1 =========================================================

Widget grid_V_2(
    {required String? name,
    required String? kcal,
    required dynamic min,
    required String? beginner,
    required dynamic color}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 91,
                height: 91,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: color,
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/a6.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(
                        color: ColorApp.blackColor,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.alarm,
                          size: 19, color: ColorApp.backgrounOnBoardingTow),
                      Text(
                        '$kcal',
                        style: TextStyle(
                            color: ColorApp.blackColor,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '|',
                        style: TextStyle(
                            color: ColorApp.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      SizedBox(width: 9),
                      Icon(Icons.alarm,
                          size: 19, color: ColorApp.backgrounOnBoardingTow),
                      Text(
                        ' $min',
                        style: TextStyle(
                            color: ColorApp.blackColor,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$beginner',
                    style: TextStyle(
                        color: ColorApp.blackColor,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.grey, thickness: 1),
          SizedBox(height: 10),
        ],
      ),
    ),
  );
}

//====== Page- 3 =========================================================

Widget grid_V_3(
    {required String? Date,
    required String? sub_text,
    required dynamic? color,
    required dynamic? color_2}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      width: 131,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: ColorApp.primaryColor),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$Date',
                style: TextStyle(
                    color: color_2,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 3),
          Text(
            '$sub_text',
            style: TextStyle(
                color: color_2,
                fontFamily: 'Switzer',
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
        ],
      ),
    ),
  );
}

Widget grid_V_4({
  required String? Date,
  required dynamic color,
}) {
  return Container(
    width: 75,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      color: color,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$Date',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w700,
                    fontSize: 15)),
          ],
        ),
      ],
    ),
  );
}

//====== Page- Payment =========================================================

Widget grid_V_Payment({
  required String? name_visa,
  required dynamic num,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      height: 115,
      width: 186,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color.fromARGB(255, 110, 108, 238),
              Color.fromARGB(255, 123, 121, 249),
              Color.fromARGB(255, 206, 86, 243),
              Color.fromARGB(255, 221, 111, 255),
              Color.fromARGB(255, 189, 112, 212),
              Color.fromARGB(255, 123, 121, 249),
              Color.fromARGB(255, 123, 121, 249),
            ]),
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 255, 232, 238),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$name_visa',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_control, size: 40, color: Colors.black),
                SizedBox(width: 5),
                Text(
                  '$num',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(width: 10),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.check, size: 20, color: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

// page 1 ------------------------------------------------------------------------
List items_1 = [
  list_V_1(name: 'Doctors', name_image: 'a5.png'),
  list_V_1(name: 'nurses', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
  list_V_1(name: 'Doctors', name_image: 'a5.png'),
  list_V_1(name: 'nurses', name_image: 'a5.png'),
  list_V_1(name: 'Doctors', name_image: 'a5.png'),
  list_V_1(name: 'nurses', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
  list_V_1(name: 'Medical', name_image: 'a5.png'),
];

//  items_2 page 1 ------------------------------------------------------------------------

List items_2 = [
  grid_V_2(
      name: 'Dr. jasmin noor',
      kcal: '110 kcal',
      min: '10 min',
      beginner: 'beginner',
      color: ColorApp.yellowColor),
  grid_V_2(
      name: 'Dr. amany',
      kcal: '110 kcal',
      min: '10 min',
      beginner: 'beginner',
      color: ColorApp.backgrounOnBoardingTow),
  grid_V_2(
      name: 'Dr. noor noor',
      kcal: '110 kcal',
      min: '10 min',
      beginner: 'beginner',
      color: ColorApp.backgroundonBoardingFour),
];

// items_3 Page_3 ------------------------------------------------------------------------

List items_1_Page_3 = [
  grid_V_3(
      Date: 'Today, 23 Feb',
      sub_text: 'No slots available',
      color: ColorApp.backgroundWhaitColor,
      color_2: ColorApp.greyColor6),
  grid_V_3(
      Date: 'Today, 23 Feb',
      sub_text: 'No slots available',
      color: ColorApp.blackColor,
      color_2: Color(0xffF5F5F5)),
  grid_V_3(
      Date: 'Today, 23 Feb',
      sub_text: 'No slots available',
      color: ColorApp.blackColor,
      color_2: ColorApp.backgroundWhaitColor),
  grid_V_3(
      Date: 'Today, 23 Feb',
      sub_text: 'No slots available',
      color: ColorApp.blackColor,
      color_2: Color(0xffF5F5F5))
];

List items_2_Page_3 = [
  grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
  grid_V_4(Date: '1:30 PM', color: ColorApp.primaryColor),
  grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
  grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
  grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
  grid_V_4(Date: '1:30 PM', color: ColorApp.blackBlueColor),
  grid_V_4(Date: '7:00 PM', color: ColorApp.blackBlueColor),
];

//----- Payment items_ViSA ------------------------------------------------------------------------

List items_ViSA = [
  grid_V_Payment(name_visa: 'ViSA', num: 2525),
  grid_V_Payment(name_visa: 'GFDV', num: 5252),
  grid_V_Payment(name_visa: 'HGHDF', num: 8588),
  grid_V_Payment(name_visa: 'KKLK', num: 8585),
];
