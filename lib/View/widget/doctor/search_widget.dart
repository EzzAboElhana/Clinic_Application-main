// ignore_for_file: empty_statements, dead_code

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorApp.backgroundWhaitColor,
          borderRadius: BorderRadius.circular(10)),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search ...",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.search_outlined),
          suffixIcon: Icon(Icons.close),
        ),
      ),
    );
    ;
  }
}
