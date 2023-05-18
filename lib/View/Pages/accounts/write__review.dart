// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../review/appointment.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 47),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff2C2C2E),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Write a Review',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Switzer',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 235,
                        width: double.infinity,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Review (Optional)',
                            labelText: 'Review',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Appointment()),
                    );
                  },
                  child: Container(
                    height: 51,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xffD0FD3E)),
                    child: Center(
                      child: Text(
                        'send',
                        style: TextStyle(
                            fontSize: 17,
                            // fontFamily: 'Switzer',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
