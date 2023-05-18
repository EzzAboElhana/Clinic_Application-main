// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable, file_names, prefer_const_declarations

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';

class Text_Field {
  Widget Text_F() {
    final border_color = Color(0xff303841);
    final hint_Text = 'Dentist';
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: TextFormField(
        cursorColor: border_color,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {},
            child: Icon(
              Icons.clear,
              color: border_color,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: border_color,
          ),
          hintText: hint_Text,
          hintStyle: TextStyle(
            color: Color(0xff303841),
          ),
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: border_color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: border_color),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}

class Text_Field_1 {
  Widget Text_F() {
    final hint_Text = 'Search';
    return TextFormField(
      cursorColor: ColorApp.blackBlueColor3,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: ColorApp.blackBlueColor3,
        ),
        hintText: hint_Text,
        hintStyle: TextStyle(
          color: ColorApp.blackBlueColor3,
        ),
        filled: true,
        fillColor: ColorApp.backgroundWhaitColor,
        labelStyle: TextStyle(fontSize: 12),
        contentPadding: EdgeInsets.only(left: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorApp.blackBlueColor3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorApp.blackBlueColor3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}

//  Akrm search ----------------------------------------------

class Text_Field_search {
  Widget Text_search({required search_controller}) {
    final search_controller = TextEditingController();
    final hint_Text = 'Search';
    return TextFormField(
      cursorColor: Colors.black,
      controller: search_controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(71, 199, 199, 199),
        prefixIcon: Icon(Icons.search, color: Colors.black, size: 26),
        hintText: hint_Text,
        hintStyle: TextStyle(
          color: Color(0xff303841),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelStyle: TextStyle(fontSize: 12),
        contentPadding: EdgeInsets.only(left: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 167, 167, 167)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 167, 167, 167)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}

// class Payment_2 TextField ----------------------------------------------

class Text_Field_2 extends StatelessWidget {
  Text_Field_2({
    required this.hint_text,
    required this.TEXT_controller,
    required this.color,
  });
  dynamic TEXT_controller;
  final hint_text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 55,
      child: TextField(
        controller: TEXT_controller,
        decoration: InputDecoration.collapsed(
          hintText: hint_text,
          hintStyle: TextStyle(
            color: color,
            fontSize: 17,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// class Payment_3 TextField ----------------------------------------------

class Text_Field_3 extends StatelessWidget {
  Text_Field_3({
    required this.hint_text,
    required this.TEXT_controller,
    required this.color,
  });
  final TEXT_controller;
  final hint_text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 55,
      child: TextField(
        controller: TEXT_controller,
        decoration: InputDecoration.collapsed(
          hintText: hint_text,
          hintStyle: TextStyle(
            color: color,
            fontSize: 17,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
