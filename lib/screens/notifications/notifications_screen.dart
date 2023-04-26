import 'package:ecommerce_app/enums.dart';
import 'package:ecommerce_app/models/Notifications.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = "/notifications";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
