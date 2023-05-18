// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:carehealth/View/Pages/accounts/verify_account.dart';
import 'package:flutter/material.dart';
import '../../widget/login/container.dart';
import '../../widget/login/mytext_field.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 47, right: 20, left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Switzer',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Please enter your email below to receive \nyour password reset code.',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 125,
                ),
                Text(
                  'Enter your email address',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text_Field(
                  hintText: 'yourmail@mail.com',
                  obscureText: false,
                  TextInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verify()),
                      );
                    },
                    child: Container_wed(
                      color: Color(0xff022939),
                      fontSize: 22,
                      text: 'Reset Password',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
