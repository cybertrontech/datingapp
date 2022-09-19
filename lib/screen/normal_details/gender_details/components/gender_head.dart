import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/screen/normal_details/gender_details/components/gender_form.dart';
import 'package:flutter/material.dart';

class GenderHead  extends StatefulWidget {
  const GenderHead({Key? key}) : super(key: key);

  @override
  State<GenderHead> createState() => _GenderHeadState();
}

class _GenderHeadState extends State<GenderHead> {
  bool color = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: "Lets start with the basics"),
        SemiText(text: "Adding these details would help ypu get suitable matches",),
        // Text("Adding these details would help ypu get suitable matches",
        //   style: TextStyle(fontWeight:FontWeight.w500,fontSize: 10,color: Colors.black87),),

        SizedBox(height: 20,),

        Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontFamily:"Muli",fontSize: 15,color: Colors.black87),),
        SizedBox(height: 0,),
        Row(
          children: [
            CircularButton(

              text: "Male",
              onPressed: (){
                setState(() {
                  return print("click");
                });
              },
            ),
            SizedBox(width: 12,),
            CircularButton(
              text: "Female",
              onPressed: (){
              },
            ),
          ],
        ),

      ],
    );
  }
}
