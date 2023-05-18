// ignore_for_file: unnecessary_import, unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../constatnt/color_app.dart';
import '../../../controller/radio_controller.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState()
//   {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool state = false;
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       backgroundColor: Colors.black,
//       navigationBar:CupertinoNavigationBar(
//           leading: CupertinoNavigationBarBackButton(
//             onPressed: ()
//             { },
//             color: Color(0xFFD0FD3E),
//           ),
//           middle: Text(" CupertinoSwitch")
//       ),
//       child:Material(
//         child: Container(
//             margin: EdgeInsets.only(top:120, left: 50, right: 20),
//             width: double.infinity,
//             child:Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width*0.5,
//                         child: Text("Bluetooth", style: TextStyle(fontWeight: FontWeight.bold),),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width*0.20,
//                         child: CupertinoSwitch(
//                           value:state,
//                           onChanged: (value){
//                             state = value;
//                             setState(() {
//
//                             },
//                             );
//                           },
//                           thumbColor:  Color(0xFF000000),
//                           activeColor: Color(0xFFD0FD3E),
//
//
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Divider(
//                   height: 1,
//                   color: CupertinoColors.systemGrey5,
//                 ),
//                 SizedBox(
//                     height:40
//                 ),
//                 Text(state == true? "Bluetooth turned on": "Bluetooth turned off",
//                   style:TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: state == true? CupertinoColors.secondaryLabel : CupertinoColors.activeOrange
//                   ),
//                 ),
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }

class Notifications extends StatelessWidget {
  Notifications({
    Key? key,
  }) : super(key: key);
  final NotificationsController controller = Get.put(NotificationsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationsController>(
        init: NotificationsController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0xff2C2C2E),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CupertinoPageScaffold(
                  backgroundColor: Color(0xff2C2C2E),
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
                            SizedBox(
                              width: 80,
                            ),
                            Align(
                              // alignment: Alignment.center,
                              child: Text(
                                "Notifications",
                                textAlign: TextAlign.center,
                                style: Styles.textStyle20Setting,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Workout Reminders",
                              style: Styles.textStyle18,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            child: CupertinoSwitch(
                              value: controller.state,
                              onChanged: (val) {
                                controller.onChanged(val);
                              },
                              thumbColor: Color(0xFFD0FD3E),
                              activeColor: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Program Notifications",
                              style: Styles.textStyle18,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            child: CupertinoSwitch(
                              value: controller.state,
                              onChanged: (val) {
                                controller.onChanged(val);
                              },
                              thumbColor: Color(0xFF000000),
                              activeColor: Color(0xFFD0FD3E),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "You can manage your app notification \n permission in your Phone Settings",
                          style: Styles.textStyleprivacy,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
