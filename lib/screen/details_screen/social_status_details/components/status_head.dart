import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
// import 'package:datingapp/screen/normal_details/education_details/components/education_form.dart';
import 'package:flutter/material.dart';

class StatusHead extends StatelessWidget {
  const StatusHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: 'Tell us about your social status',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: SemiText(
            text: 'Add these details to find like-minded matches',
          ),
        ),
      ],
    );
  }
}
