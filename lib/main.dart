import 'package:datingapp/routes.dart';
import 'package:datingapp/screen/details_screen/education_details/education_details.dart';
import 'package:datingapp/screen/details_screen/upload_photo/upload_image.dart';
import 'package:datingapp/screen/home/main_page/profile_page/components/body.dart';
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:datingapp/screen/details_screen/social_status_details/socail_status_details.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/home/main_page/profile_page/profile_page.dart';
import 'package:datingapp/screen/splash/components/body.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:datingapp/test.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'screen/home/navigation_button_screen/components/nav_button_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: artist(),
      initialRoute: HomeScreen.routeName,
      getPages: RoutesClass.route,
    );
  }
}
