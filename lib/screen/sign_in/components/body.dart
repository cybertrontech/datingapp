import 'dart:convert';

import 'package:datingapp/api/register_user_api.dart';
import 'package:datingapp/components/no_account_text.dart';
import 'package:datingapp/components/socal_card.dart';
import 'package:datingapp/reusable/reusable_functional_components/google_login_user.dart';
import 'package:datingapp/routes.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/home/main_page/home_page/home_page.dart';
import 'package:datingapp/screen/sign_up/sign_up_screen.dart';
import 'package:datingapp/secured_storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "package:get/get.dart";
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: (28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60),
                SignForm(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {
                        signIn();
                      },
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: (20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> signIn() async {
  final user = await GoogleLoginDatingApp.googleLogin();
  try {
    String? loginInfo =
        await ApiUserService.profileCompletedOrNot(user?.email ?? "");
    if (loginInfo == null) {
      Get.offAndToNamed(SignUpScreen.routeName);
    } else {
      try {
        int a = await SecuredStorage.storeloginInfo(json.decode(loginInfo));
        if (a == 1) {
          Get.offAndToNamed(HomeScreen.routeName);
        } else {
          NullThrownError();
        }
      } catch (e) {
        //SHOW ERROR HERE
        print("Sorry something went wrong here.");
      }
    }
  } catch (e) {
    print(e);
  }
  // Get.toNamed(SignUpScreen.routeName, arguments: user);
}
