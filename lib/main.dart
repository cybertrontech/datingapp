import 'package:datingapp/routes.dart';
import 'package:datingapp/screen/splash/components/body.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'screen/normal_details/gender_details/components/gender_head.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home:  GenderHead(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

