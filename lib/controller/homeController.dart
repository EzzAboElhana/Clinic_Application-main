// ignore_for_file: file_names, implementation_imports

import 'package:flutter/src/widgets/icon_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  bool notify_1 = true;
  bool notify_2 = false;
  String assetName_1 = 'assets/images/Ellipse.png';

//=================== List Detaile doctores ============================
  List bestDoctorList = [
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 3245,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 3,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 2154,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 5,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 5208,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 1,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 1154,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 4,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 1225,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 5,
    },
    {
      'name': 'Crick',
      'name2': 'Blessing',
      'numfav': 3254,
      'image': 'assets/images/Ellipse.png',
      'image2': 'assets/images/doctor.png',
      'hour': 25.00,
      'title': 'Dentist Specialist',
      'year': 7,
      'rech': 78,
      'coun': 80,
      'timeavail': '11:PM today',
      'rate': 2,
    }
  ];

// =================== List reviews ================================
  List reviewsList = [
    {
      'userid': '1',
      'name': 'Sharon Jem',
      'image': 'assets/images/47.png',
      'comment':
          'Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '2',
      'name': 'Sharon Jem',
      'image': 'assets/images/63.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '3',
      'name': 'Sharon Jem',
      'image': 'assets/images/40.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '4',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '5',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
    {
      'userid': '6',
      'name': 'Sharon Jem',
      'image': 'assets/images/59.png',
      'comment':
          'Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness\n and adjusted the workout to suit me whilst also \npushing me to my limits.',
      'rate': '4.3',
      'date': '2d'
    },
  ];

  IconData? get iconData => null;

  get iconColor => null;

  void changeColorIconFav() {}
}
