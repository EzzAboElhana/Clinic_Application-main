// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_full_hex_values_for_flutter_colors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constatnt/image_app.dart';
import '../../widget/login/container.dart';
import '../../widget/login/mytext_field.dart';
import '../Trainer/paymentCompleted.dart';
import 'create_accounts.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 47, left: 24, right: 24),
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
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82,
                        ),
                        Text(
                          'Welcome to Pro Dector!',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Switzer',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Text(
                          'Hello there, sign in to continue!',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Switzer',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 46,
                        ),
                        Text_Field(
                          hintText: 'yourmail@mail.com',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 46,
                        ),
                        Text_Field_password(
                          TextInputType: TextInputType.visiblePassword,
                          TextInputAction: TextInputAction.done,
                          hintText: 'password',
                          obscureText: passwordVisible,
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgot_Password()),
                                );
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xff7DB00E),
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentCompleted()),
                            );
                          },
                          child: Container_wed(
                            color: Color(0xff022939),
                            text: 'Login',
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 47,
                        ),
                        Center(
                          child: Text('Or Login with',
                              style: TextStyle(
                                color: Color(0xff303841),
                                fontSize: 14,
                                fontFamily: 'Switzer',
                              )),
                        ),
                        SizedBox(
                          height: 17.5,
                        ),
                        Container(
                          height: 51,
                          width: double.infinity,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Image.asset(ImagesApp.google)),
                                  Text('Connect with Google',
                                      style: TextStyle(
                                        color: Color(0xff303841),
                                        fontSize: 14,
                                        fontFamily: 'Switzer',
                                      )),
                                  SizedBox()
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff69696940), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: Color(0xffF5F5F5),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 51,
                          width: double.infinity,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Text('Connect With Facebook',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Switzer',
                                      )),
                                  SizedBox()
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff69696940), width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Color(0xff4267B2)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don’t have an account?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Create_Accounts()),
                                );
                              },
                              child: Text('Register!',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Switzer',
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ])))
      ],
    ));
  }
}
