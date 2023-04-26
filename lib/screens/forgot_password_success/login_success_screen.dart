import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPasswordSuccessScreen extends StatelessWidget {
  static String routeName = "/forgot_password_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Forgot Password Mail Sent"),
      ),
      body: Body(),
    );
  }
}
