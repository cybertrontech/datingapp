import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/home/main_page/chating_page/chating_page.dart';
import 'package:datingapp/screen/home/main_page/matches_page/matches_page.dart';
import 'package:datingapp/screen/home/main_page/profile_page/profile_page.dart';
import 'package:datingapp/reusable/reusable_functional_components/logout_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../../main_page/home_page/home_page.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({Key? key}) : super(key: key);
  @override
  _NavigationbarState createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // systemNavigationBarDividerColor: Colors.green,
        // statusBarColor: Colors.black54,
        // systemNavigationBarColor: Colors.black54,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            HomePage(),
            MatchesPage(),
            ChatingPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          waterDropColor: kPrimaryNavbuttonColor,
          backgroundColor: kbackgroundcolor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.favorite_rounded,
                outlinedIcon: Icons.favorite_border_rounded),
            BarItem(
              filledIcon: Icons.messenger,
              outlinedIcon: Icons.messenger_outline,
            ),
            BarItem(
              filledIcon: Icons.account_circle,
              outlinedIcon: Icons.account_circle_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
