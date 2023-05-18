// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../controller/radio_controller.dart';

class UnitsOfMeasure extends StatelessWidget {
  const UnitsOfMeasure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RadioController());

    return GetBuilder<RadioController>(builder: (RadioController) {
      return Scaffold(
        backgroundColor: Color(0xff2C2C2E),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Container(
                  height: 120,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios_outlined,
                              size: 26, color: Colors.white)),
                      //SizedBox(width: 140,),
                      Align(
                        // alignment: Alignment.center,
                        child: Text(
                          "Units Of Measure",
                          textAlign: TextAlign.center,
                          style: Styles.textStyle20Setting,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Metric",
                          style: Styles.textStyle18,
                        ),
                        Spacer(),
                        Radio(
                          value: "value",
                          groupValue: RadioController.orderType,
                          onChanged: (dynamic value) {
                            RadioController.setOrderType(value = 0);
                          },
                          activeColor: ColorApp.radioButtom,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Imperial",
                          style: Styles.textStyle18,
                        ),
                        Spacer(),
                        Radio(
                          value: "value",
                          groupValue: RadioController.orderType,
                          onChanged: (dynamic value) {
                            RadioController.setOrderType(value = 1);
                          },
                          activeColor: ColorApp.radioButtom,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}










//
//
//
//
// Scaffold(
// backgroundColor:Color(0xff2C2C2E),
// body: SafeArea(
// child: Column(
// children: [
//
// Container(
// child:      Row(
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(onPressed: (){},
// icon: Icon(Icons.arrow_back_ios_outlined,size: 26,color: Colors.white,),),
// SizedBox(width: 100,),
// Text("Units of Measure",
// textAlign: TextAlign.center,
// style: Styles.textStyle20Setting,)
// ],
// ),
// ),
// Row(
// children: [
// Text("Metric",style: Styles.textStyle20Setting,),
// Spacer(),
// Radio(value: "male",
// groupValue: "chose",
// onChanged: (d){},
// activeColor: Colors.green,
// ),
// ],
// ),
// Row(
// children: [
// Text("Imperial",style: Styles.textStyle20Setting,),
// Spacer(),
// Radio(value: "male",
// groupValue: "chose",
// onChanged: (d){},
// activeColor: Colors.green,
// ),
// ],
// ),
// ],
//
// ),
// ),
// );