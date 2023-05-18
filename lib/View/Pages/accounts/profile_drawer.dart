// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widget/login/container.dart';

class Profile_Drawer extends StatelessWidget {
  const Profile_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xff4267B2),
                Color(0xffF5F5F5),
                Color(0xffF5F5F5),
                Color(0xffF5F5F5),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox()
                  ],
                ),
                Expanded(
                    child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView(children: [
                          SizedBox(
                            height: 50,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'John smith ',
                                labelText: 'Name',
                                suffixIcon: Icon(Icons.person)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Jhone@company.com',
                                labelText: 'Email address',
                                suffixIcon: Icon(Icons.email)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '+999202166',
                                labelText: 'Mobile',
                                suffixIcon: Icon(Icons.call)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Change password ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Switzer',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Text(
                                  'Send password reset link to your email!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Switzer',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container_wed(
                              text: 'Save Profile',
                              color: Color(0xff012939),
                              fontSize: 18)
                        ]))),
              ],
            ),
          ),
        ));
  }
}
