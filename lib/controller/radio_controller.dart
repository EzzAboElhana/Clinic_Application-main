// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';

// abstract class SettingController extends GetxController{
//
//   onChanged();
//
// }
//
// class RadioButtomController extends GetxController{
//   String _orderType = "Metric";
//   String get orderType => _orderType;
//
//   @override
//   void setOrderTpe(String type) {
//     _orderType = type;
//     update();
//
//
//   }
//
// }

class RadioController extends GetxController {
  var orderType;
  bool? checked;
  // var isSelected =true;

  void setOrderType(type) {
    orderType = type;
    update();
  }
}

class NotificationsController extends GetxController {
  bool state = false;
  onChanged(index) {
    state = index;
    update();
  }
}
