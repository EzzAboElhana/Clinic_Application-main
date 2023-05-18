// ignore_for_file: unused_import, prefer_const_constructors

import 'package:carehealth/view/widget/doctor/app_bar.dart';
import 'package:carehealth/view/widget/doctor/search_widget.dart';
import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import 'doctor_name.dart';
import 'index_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(12),
            child: Row(
              children: const [
                IndexWidget(
                  textTitle: 'Category',
                ),
                // colorTitle: ColorApp.yallowColor,
                //iconTitle: IconApp.categoryIcon,),
                SizedBox(
                  width: 20,
                ),
                IndexWidget(
                  textTitle: 'Classes',
                  // colorTitle: ColorApp.blueColor,
                  // iconTitle: IconApp.assessmentIcon
                ),
                SizedBox(
                  width: 20,
                ),
                IndexWidget(
                  textTitle: 'BookStore',
                  // colorTitle: ColorApp.green1Color,
                  // iconTitle: IconApp.storeIcon
                ),
                SizedBox(
                  width: 20,
                ),
                IndexWidget(
                  textTitle: 'Lesson Free',
                  // colorTitle: ColorApp.red1Color,
                  // iconTitle: IconApp.emoji_events_Icon,
                ),
                SizedBox(
                  width: 20,
                ),
                IndexWidget(
                  textTitle: 'Live Course',
                  // colorTitle: ColorApp.moveColor,
                  // iconTitle: IconApp.video_libraryIcon,
                ),
                SizedBox(
                  width: 20,
                ),
                IndexWidget(
                  textTitle: 'LeaderBoard',
                  // colorTitle: ColorApp.green1Color,
                  // iconTitle: IconApp.play_circle_fill_Icon
                ),
              ],
            ),
          ),
          // const CoursesTextSeeAll(),
          const SizedBox(
            height: 10,
          ),
          DoctorName(),
        ],
      ),
    );
  }
}
