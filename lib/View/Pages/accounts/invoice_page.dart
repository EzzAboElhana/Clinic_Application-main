// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import '../../widget/create_Accounts/container.dart';
import '../../widget/create_Accounts/row_check.dart';

class Invoice_Page extends StatelessWidget {
  const Invoice_Page({super.key});

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
          padding: const EdgeInsets.only(left: 16, right: 16, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.cancel,
                    size: 40,
                  ),
                  Text(
                    'Add line item',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Switzer',
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Search line items',
                              suffixIcon: Icon(Icons.search)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deselect All',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Switzer',
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(),
                            Text(
                              '5 Selected',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Switzer',
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        Row_check(text: '0.00\$ Storefront'),
                        Row_check(text: '0.00\$ Awning'),
                        Row_check(text: '0.00\$ Sidewalks'),
                        Row_check(text: '0.00\$ canopies'),
                        Row_check(text: '0.00\$ Stairs'),
                        Row_check(text: '0.00\$ Railings'),
                        Row_check(text: '0.00\$ Laber'),
                        Row_check(text: '0.00\$ Underground Parking'),
                        Expanded(
                            child: Container_wed(
                                text: 'Add to invoice',
                                color: Color(0xff022939),
                                fontSize: 18)),
                      ]))),
            ],
          ),
        ),
      ),
    );
  }
}
