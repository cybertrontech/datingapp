import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
// import 'package:datingapp/screen/normal_details/education_details/components/education_form.dart';
import 'package:flutter/material.dart';

class PersonalDetailsHead extends StatelessWidget {
  const PersonalDetailsHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: 'Tell us about yourself',
        ),
        SizedBox(
          height: 2,
        ),
        SemiText(
          text: 'Write about ypur personality,interests,hobbies & more',
        ),
      ],
    );
  }
}
