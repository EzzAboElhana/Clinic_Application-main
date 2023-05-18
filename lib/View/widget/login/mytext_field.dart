// ignore_for_file: unused_field, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names, prefer_const_constructors, empty_statements, dead_code

import 'package:flutter/material.dart';

class Text_Field extends StatefulWidget {
  final String hintText;
  final TextInputType;
  final bool obscureText;

  const Text_Field({
    super.key,
    required this.hintText,
    this.TextInputType,
    required this.obscureText,
  });

  @override
  State<Text_Field> createState() => _Text_FieldState();
}

class _Text_FieldState extends State<Text_Field> {
  bool passwordVisible = false;
  String? _email;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      width: double.infinity,
      child: TextFormField(
        // validator: (input) {
        //   if (input!.isEmpty) {
        //     return 'Please enter your Email Adress';
        //   }
        //   return null;
        // },
        // onSaved: (input) => _email = input!,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color: Color(0xffC4C4C4),
              fontSize: 14,
              fontFamily: 'Switzer',
              fontWeight: FontWeight.w400),
        ),
        keyboardType: widget.TextInputType,
      ),
    );
  }
}

class Text_Field_password extends StatefulWidget {
  final String hintText;
  final TextInputType;
  final bool obscureText;
  final Widget suffixIcon;
  final TextInputAction;
  const Text_Field_password(
      {super.key,
      required this.hintText,
      this.TextInputType,
      required this.obscureText,
      required this.suffixIcon,
      this.TextInputAction});

  @override
  State<Text_Field_password> createState() => _Text_Field_passwordState();
}

class _Text_Field_passwordState extends State<Text_Field_password> {
  bool passwordVisible = false;
  final _forKey = GlobalKey<FormState>();
  String? _email, _password;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      width: double.infinity,
      child: TextFormField(
        validator: (input) {
          if (input!.isEmpty) {
            return 'Please enter your Email Adress';
          }
          return null;
        },
        onSaved: (input) => _email = input!,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color: Color(0xffC4C4C4),
              fontSize: 14,
              fontFamily: 'Switzer',
              fontWeight: FontWeight.w400),
          suffixIcon: widget.suffixIcon,
          alignLabelWithHint: true,
          filled: true,
        ),
        keyboardType: widget.TextInputType,
        textInputAction: widget.TextInputAction,
      ),
    );
    ;
  }
}
