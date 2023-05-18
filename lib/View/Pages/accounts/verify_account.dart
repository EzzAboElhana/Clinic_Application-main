// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../review/write__review.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
      Expanded(
          child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verify Account',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Switzer',
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Verify your account by entering verification\ncode we sent to ecoin@etrevago.com',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Switzer',
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceBetween,
                        fieldWidth: 55,
                        fieldStyle: FieldStyle.underline,
                        outlineBorderRadius: 20,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          'I haven’t received a code',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff243A78)),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Review()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xff022939)),
                          child: Center(
                              child: Text(
                            'Reset Password',
                            style: TextStyle(
                                fontFamily: 'BebasNeue',
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ])))
    ]));
  }
}
