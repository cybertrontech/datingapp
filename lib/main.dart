import 'package:datingapp/routes.dart';
import 'package:datingapp/screen/splash/components/body.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:datingapp/test.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home:  test(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

