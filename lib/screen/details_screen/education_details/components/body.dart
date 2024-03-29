import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/details_screen/education_details/components/education_form.dart';
import 'package:datingapp/screen/details_screen/education_details/components/eduction_head.dart';
import 'package:datingapp/screen/details_screen/education_details/education_details.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 15,),
              EducationHead(),
              EducationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
