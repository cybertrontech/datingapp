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
          const SizedBox(
            height: 35,
          ),
          buildHeightFormField(),
          buildPhonenumberField(),
          Obx(
            () => Text(
              Get.find<RegisterController>().errorMessage.value,
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.55),
          Obx(
            () => Get.find<RegisterController>().loading.value == true
                ? DefaultButton(text: "Load...", press: () {})
                : DefaultButton(
                    text: "Create my profile",
                    press: () {
                      Get.find<RegisterController>().createUser();
                      // print("object");
                      // Navigator.pushNamed(context, HomeScreen.routeName);
                    }),
          ),
        ],
      ),
    );
  }
}

TextFormField buildHeightFormField() {
  return TextFormField(
    onTap: () {},
    // obscureText: truen,
    initialValue: Get.find<RegisterController>().bio.value,
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

TextFormField buildPhonenumberField() {
  return TextFormField(
    onTap: () {},
    // obscureText: truen,
    initialValue: Get.find<RegisterController>().phonenumber.value,
    onChanged: (val) {
      Get.find<RegisterController>().changePhonenumber(val);
    },
    decoration: InputDecoration(
      labelText: "",
      hintText: "Phonenumber",
      hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
