import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/normal_details/gender_details/components/gender_form.dart';
import 'package:datingapp/screen/normal_details/gender_details/components/gender_head.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            GenderHead(),
            GenderForm(),
          ],
        ),
      ) ,
    );
  }
}
