import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
// import 'package:datingapp/screen/normal_details/education_details/components/education_form.dart';
import 'package:flutter/material.dart';

class UploadHead extends StatelessWidget {
  const UploadHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Impress them with your latest photo',),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: SemiText(text: 'Profile  photos ensure a 5% increase in matches',),
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
