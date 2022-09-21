import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/screen/details_screen/education_details/education_details.dart';
import 'package:datingapp/screen/details_screen/social_status_details/socail_status_details.dart';
// import 'package:datingapp/screen/normal_details/education_details/components/widget/exployed_in.dart';
// import 'package:datingapp/screen/normal_details/education_details/education_details.dart';
import 'package:flutter/material.dart';

import '../../../../components/default_button.dart';
import 'widget/exployed_in.dart';

class EducationForm extends StatefulWidget {
  const EducationForm({Key? key}) : super(key: key);

  @override
  State<EducationForm> createState() => _EducationFormState();
}

class _EducationFormState extends State<EducationForm> {
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
            buildeducationFormField(),
            SizedBox(height: 30,),
            ExployedIn(),
            buildoccupationFormField(),
            SizedBox(height: 30,),
            buildannualincomFormField(),
            SizedBox(height: MediaQuery.of(context).size.height*0.1),
            DefaultButton(
                text: "Continue",
                press: () {
                  print("object");
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, SocialStatusDetails.routeName);
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
      hintText: "Occupation",hintStyle:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}


TextFormField buildannualincomFormField() {
  return TextFormField(
    onTap: (){},
    // obscureText: true,
    decoration: InputDecoration(
      labelText: "",
      hintText: "Annual Incom",hintStyle:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
