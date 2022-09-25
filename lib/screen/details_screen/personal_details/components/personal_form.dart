import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/controller/register_controller.dart';
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDetailsForm extends StatefulWidget {
  @override
  State<PersonalDetailsForm> createState() => _PersonalDetailsFormState();
}

class _PersonalDetailsFormState extends State<PersonalDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  String bio = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          buildHeightFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.55),
          DefaultButton(
              text: "Create my profile",
              press: () {
                Get.find<RegisterController>().createUser();
                // print("object");
                // Navigator.pushNamed(context, HomeScreen.routeName);
              }),
        ],
      ),
    );
  }
}

TextFormField buildHeightFormField() {
  return TextFormField(
    onTap: () {},
    // obscureText: true,
    onChanged: (val) {
      Get.find<RegisterController>().changeBio(val);
    },
    decoration: InputDecoration(
      labelText: "",
      hintText: "Write minimum of 25 words.",
      hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
