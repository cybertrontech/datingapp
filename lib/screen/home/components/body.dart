

import 'package:datingapp/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.pink,height: 123,)
          ],
        ),
      ),
    );
  }
}
