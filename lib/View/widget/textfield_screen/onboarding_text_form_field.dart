// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class OnBoardingTextFormField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  Function validator;
  TextInputType? keyboardType;
  int? maxLines;
  String? hintText;
  Widget? suffixIcon;
  bool? obscureText;
  OnBoardingTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    required this.keyboardType,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        // contentPadding: EdgeInsets.all(15),
        //contentPadding: const EdgeInsets.from
        //(20.0, 20.0, 20.0, 5.0),
        // alignLabelWithHint: true,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xffC4C4C4),
        ),
        errorStyle:
            Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        //fillColor: Colors.grey.shade200,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          //borderSide: const BorderSide(color: Colors.white),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
      ),
    );
  }
}
