import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:flutter/material.dart';

class UploadBody extends StatelessWidget {
  const UploadBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(radius: 40,
            backgroundColor: kPrimaryColor,
            child: Icon(Icons.add_a_photo,size: 35,color: Colors.white,),),
          SizedBox(height: 15,),
          SemiText(text: "Supported file format jpg,jpge,png"),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 85,right: 85),
            child: DefaultButton(
              text: "Upload Photo",
                press: () {
                  print("object");

                    Navigator.pushNamed(context, PersonalDetails.routeName);

                }
            ),
          )
        ],
      ),
    );
  }
}
