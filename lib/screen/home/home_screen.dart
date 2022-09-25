import 'package:datingapp/reusable/reusable_functional_components/logout_user.dart';
import 'package:datingapp/screen/home/navigation_button_screen/components/nav_button_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("noice")),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('logout'),
              onTap: () {
                // Update the state of the app.
                // ...
                logout();
              },
            ),
          ],
        ),
      ),
      body: Navigationbar(),
    );
  }
}
