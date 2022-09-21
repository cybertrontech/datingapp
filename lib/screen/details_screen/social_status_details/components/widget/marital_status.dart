import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:flutter/material.dart';

class MaritalStatus extends StatelessWidget {
  const MaritalStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SemiHeadingText(text: "Marital Status"),
        SizedBox(height: 5,),
        Container(
          width: MediaQuery.of(context).size.width*2,
          child: Row(
            children: [
              CircularButton(
                text: "Never Married",
                onPressed: (){
                },
              ),
              SizedBox(width: 5,),
              CircularButton(
                text: "Divorced",
                onPressed: (){
                },
              ),
              SizedBox(width: 5,),
              CircularButton(
                text: "Awaitiong Divorced",
                onPressed: (){
                },
              ),


            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*2,
          // color: Colors.red,
          child: Row(
            children: [
              CircularButton(
                text: "Widowed",
                onPressed: (){
                },
              ),
              SizedBox(width: 5,),
              CircularButton(
                text: "Annulled",
                onPressed: (){
                },
              ),    SizedBox(width: 5,),
              CircularButton(
                text: "Married",
                onPressed: (){
                },
              ),
            ],
          ),
        ),

      ],
    );
  }
}
