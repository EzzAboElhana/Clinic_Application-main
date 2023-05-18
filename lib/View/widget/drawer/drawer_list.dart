// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

Widget MyDrawerList() {
  return Container(
    child: Column(
      children: [
        menuItem("Profile", Icons.person),
        div(),
        menuItem("details", Icons.dynamic_feed),
        div(),
        menuItem("Notifications", Icons.notifications_active),
        div(),
        menuItem("Subscription", Icons.subscriptions),
        div(),
        menuItem("Support", Icons.support_agent),
        div(),
        menuItem("Product updates", Icons.system_update),
        div(),
        menuItem("About  Pro-doctor", Icons.info),
        div(),
        menuItem("Pro-doctor setup", Icons.settings_accessibility),
        div(),
        menuItem("Settings system", Icons.settings_suggest),
        div(),
        menuItem("Login setting", Icons.settings_applications),
        div(),
        menuItem("Logout", Icons.logout),
      ],
    ),
  );
}

Widget menuItem(String title, IconData icon) {
  return Material(
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Switzer'),
                ))
          ],
        ),
      ),
    ),
  );
}

Widget div() {
  return Divider(
    thickness: 2,
    color: Colors.grey,
  );
}
