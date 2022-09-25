import 'package:datingapp/reusable/reusable_functional_components/logout_user.dart';
import 'package:datingapp/screen/home/navigation_button_screen/components/nav_button_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigationbar(),
    );
  }
}
