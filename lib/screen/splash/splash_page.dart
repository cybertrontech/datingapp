import 'package:datingapp/routes.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/sign_in/sign_in_screen.dart';
import 'package:datingapp/screen/sign_up/sign_up_screen.dart';
import 'package:datingapp/secured_storage/storage.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      checkUserLoggedInStatus();
    });
    super.initState();
  }

  checkUserLoggedInStatus() async {
    String? tok = await SecuredStorage.getToken();
    if (tok == null) {
      // Get.offAndToNamed(SignUpScreen.routeName);
      Get.offAndToNamed(SignInScreen.routeName);
    } else {
      Get.offAndToNamed(HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen

    return Scaffold(
      body: Body(),
    );
  }
}
