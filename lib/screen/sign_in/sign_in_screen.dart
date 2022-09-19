import 'package:datingapp/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kbackgroundcolor,

      appBar: AppBar(
        backgroundColor:kPrimaryColor,
        title: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Body(),
    );
  }
}
