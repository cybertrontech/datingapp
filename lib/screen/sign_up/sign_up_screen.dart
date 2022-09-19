import 'package:datingapp/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
