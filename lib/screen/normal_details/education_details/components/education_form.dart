import 'package:datingapp/screen/normal_details/education_details/education_details.dart';
import 'package:flutter/material.dart';

import '../../../../components/default_button.dart';

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
          children: [
            buildeducationFormField(),
            SizedBox(height: MediaQuery.of(context).size.height*0.5,),
            DefaultButton(
                text: "Continue",
                press: () {
                  print("object");
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, EducationDetails.routeName);
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
      hintText: "Education Level",hintStyle:  TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
