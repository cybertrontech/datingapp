import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
// import 'package:datingapp/screen/normal_details/education_details/components/education_form.dart';
import 'package:flutter/material.dart';

class EducationHead extends StatelessWidget {
  const EducationHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: 'Talk about education & career',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: SemiText(
            text: 'Mentioning this would help profiles know you better',
          ),
        ),
        Row(
          children: [
            // CircularButton(
            //   text: "+2",
            //   onPressed: (){
            //   },
            // ),
            // SizedBox(width: 12,),
            // CircularButton(
            //   text: "Bsc",
            //   onPressed: (){
            //   },
            // ),
          ],
        ),
      ],
    );
  }
}
