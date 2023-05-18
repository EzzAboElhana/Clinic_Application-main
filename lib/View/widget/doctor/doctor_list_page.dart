// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../constatnt/image_app.dart';
import '../onboarding/custom_bottun_onboarding.dart';
import 'app_bar.dart';

class DoctorListPage extends StatelessWidget {
  const DoctorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorApp.backgroundWhaitColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      //   color: ColorApp.blueColor.withOpacity(0.5)
                                      ),
                                  child: Image.asset(
                                    ImagesApp.imDoctor,
                                    width: 100,
                                    height: 0,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 0.0, bottom: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SafeArea(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Dr.Padiatrican",
                                          style: Styles.textStyle22,
                                        ),
                                        //Spacer(),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 30,
                                          color: Colors.red,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "Specialist medical",
                                    style: Styles.textStyleGrey,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Text(
                                    " 6 Years Experience",
                                    style: Styles.textStyleGrey,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.back_hand,
                                        size: 20,
                                        color: ColorApp.darkgreenColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("87%"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.person,
                                        size: 20,
                                        color: ColorApp.darkgreenColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("96 Pateient Stories"),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star_sharp,
                                        color: ColorApp.backgroundYallowColor,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: ColorApp.backgroundYallowColor,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: ColorApp.backgroundYallowColor,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: ColorApp.backgroundYallowColor,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "2.8",
                                        style: Styles.textStyle22,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "(2234 Views)",
                                        style: Styles.textStyleGrey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Next Avalibale",
                                    style: Styles.textStyleGreen,
                                  ),
                                  Text(
                                    "12 AM Tomorrow",
                                    style: Styles.textStyleGrey,
                                  ),
                                ],
                              ),
                              //SizedBox(width: 30,),
                              Spacer(),
                              CustomBottumOnBoarding(
                                textTitle: "Book Now",
                                color: ColorApp.darkgreenColor,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
