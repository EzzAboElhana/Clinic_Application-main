// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../constatnt/color_app.dart';
// import '../../../controller/navigation_bar/navigation_bar_controller.dart';
// import '../../../model/navigation_bar/navigation_bar_model.dart';
//
// class ButtomNavigationBar extends StatelessWidget {
//   const ButtomNavigationBar({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     int navigatorValue = 0;
//    // Get.put(NavigationBarController);
//     return  GetBuilder<NavigationBarController>(
//       init: NavigationBarController(),
//         builder: (controller){
//           return Scaffold(
//             bottomNavigationBar:CurvedNavigationBar(
//               backgroundColor: ColorApp.backgroundWhaitColor,
//               color: ColorApp.darkgreenColor,
//               items:const <Widget> [
//                 Icon(Icons.home,size: 30,color: ColorApp.backgroundWhaitColor,),
//                 Icon(Icons.favorite,size: 30,color: Colors.red,),
//                 Icon(Icons.menu_book_outlined,size: 30,color: ColorApp.backgroundWhaitColor,),
//                 Icon(Icons.note,size: 30,color: ColorApp.backgroundWhaitColor,),
//               ],
//               onTap: (index){
//                 controller.changeSelectValue(index);
//               },
//               letIndexChange: (index)=>true,
//             ) ,
//             body: ScreenPage[navigatorValue],
//           );
//
//         }
//         );
//   }
// }
