// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // excludeHeaderSemantics: true,
        // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
        title: OnBoardingTextWidget(
            text: 'EDIT PROFILE',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xff2C2C2E),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        size: 20,
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_59.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 46),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // Full name
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full name',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // username
              TextFormField(
                decoration: InputDecoration(
                  hintText: '@username',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // date of birth
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'date of birth',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // national number
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'national number',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // phone number
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'phone number',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              // email
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // home address
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'home adress',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              // height cm
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'height cm',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),

              const SizedBox(height: 22),
              // weight kg
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Weight kg',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),

              const SizedBox(height: 22),
              // blood type
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'blood type',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),

              const SizedBox(height: 22),
              // gender
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'geneder',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),

              // Nationality
              const SizedBox(height: 22),
              // date of birth
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nationality',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff505050),
                thickness: 1,
                height: 1,
              ),

              const SizedBox(height: 61),
              OnBoardingButton(
                text: 'Save',
                onPressed: () {},
                size: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
  Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/59.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0.5,
                  bottom: 1,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff2C2C2E),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
 */