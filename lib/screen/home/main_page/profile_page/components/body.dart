import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/home/main_page/profile_page/components/center_box.dart';
import 'package:datingapp/screen/home/main_page/profile_page/components/image_box.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: HomeHeadText(
            text: 'Tinder',
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ImageBox(),
            SizedBox(
              height: 20,
            ),
            CenterBox(),
          ],
        ),
      ),
    );
  }
}
