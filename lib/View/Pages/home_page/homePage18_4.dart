// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, camel_case_types, unused_local_variable, file_names, use_key_in_widget_constructors, non_constant_identifier_names, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/homePage/appBar.dart';
import '../../widget/homePage/divider.dart';
import '../../widget/homePage/listControllerWidget.dart';
import '../../widget/homePage/textBox.dart';

class HomePage_18_4 extends StatelessWidget {
  dynamic name_controller = 'Sophia !';
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
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 21, right: 21),
          child: Container(
            child: ListView(
              children: [
                // ================  Favourite doctors text ===================
                NewTextBookNowWidget(text: 'Favourite Doctors'),
                // ================= GridViews =============================
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: NewGridControllerWidget(
                      screenWidth: MediaQuery.of(context).size.width),
                ),
                NewDividerWidget(),
                // ================  best doctors text ===================
                NewTextBestDoctorTwoWidget(word: 'The best doctors'),
                // =============== List detailes doctores ==============
                NewListControllerBestDoctorTwoWidget(),
                // ============== TwoTop card doctor rate ===============
                NewListDoctorControllerCardWidget(
                    screenWidth: MediaQuery.of(context).size.width),
                // ================  Book Now text ===================
                NewTextBookNowWidget(text: 'Book Now'),
                // =============== List Categories =========================
                NewListControllerCategoryWidget(
                    screenWidth: MediaQuery.of(context).size.width),
                // =============== Three top card doctor rate ===========
                NewListControllerCardTwoWidget_1(
                    screenWidth: MediaQuery.of(context).size.width),
                // =============== Two top list of doctores title and rate ==================
                NewListDoctorControllerCardWidgetThree(
                    screenWidth: MediaQuery.of(context).size.width),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
