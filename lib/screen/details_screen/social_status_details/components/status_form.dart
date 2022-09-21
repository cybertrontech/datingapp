import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/screen/details_screen/social_status_details/components/widget/religion_status.dart';
import 'package:datingapp/screen/details_screen/social_status_details/socail_status_details.dart';
import 'package:datingapp/screen/details_screen/upload_photo/upload_image.dart';
import 'package:flutter/material.dart';

import 'widget/marital_status.dart';

class StatusForm extends StatefulWidget {
  const StatusForm({Key? key}) : super(key: key);

  @override
  State<StatusForm> createState() => _StatusFormState();
}

class _StatusFormState extends State<StatusForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left:5,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 40,),
            MaritalStatus(),
            buildoccupationFormField(),
            SizedBox(height: 50,),
            ReligiousStatus(),
            builcastFormField(),
            SizedBox(height: MediaQuery.of(context).size.height*0.1),
            DefaultButton(
                text: "Continue",
                press: () {
                  print("object");
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, UploadImage.routeName);
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}



TextFormField buildeducationFormField() {
  return TextFormField(
    onTap: (){},
    // obscureText: true,
    decoration: InputDecoration(
      labelText: "",
      hintText: "Education Level",hintStyle:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );}


TextFormField buildoccupationFormField() {
  return TextFormField(
    onTap: (){},
    // obscureText: true,
    decoration: InputDecoration(
      labelText: "",
      hintText: "Mother Tongue",hintStyle:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}

TextFormField builcastFormField() {
  return TextFormField(
    onTap: (){},
    // obscureText: true,
    decoration: InputDecoration(
      labelText: "",
      hintText: "Caste",hintStyle:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}

