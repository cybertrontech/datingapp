import 'package:datingapp/components/custom_surfix_icon.dart';
import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/controller/register_controller.dart';
import 'package:datingapp/screen/details_screen/education_details/education_details.dart';
import 'package:datingapp/screen/details_screen/social_status_details/components/status_form.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:get/get.dart';

class GenderForm extends StatefulWidget {
  @override
  _GenderFormState createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 15),
        child: Column(
          children: [
            // SizedBox(height: (30)),
            datetimepicker(),
            SizedBox(height: (20)),
            buildHeightFormField(),
            buildCityFormField(),
            SizedBox(height: (20)),
            // buildLocationFormField(),
            // SizedBox(height: (20)),
            // buildResidentialFormField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  print("object");
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, EducationDetails.routeName);
                  }
                }),
          ],
        ),
      ),
    );
  }

  datetimepicker() {
    return DateTimePicker(
      cursorColor: Colors.black,
      initialValue: '',
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      dateLabelText: 'Date of Birth(DD/MM/YYYY)',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      onChanged: (val) {
        Get.find<RegisterController>().changeDate(val);
      },
      validator: (val) {
        print(val);
        // return null;
      },
      onSaved: (val) => print(val),
    );
  }

  TextFormField buildHeightFormField() {
    return TextFormField(
      onTap: () {},
      // obscureText: true,
      initialValue: Get.find<RegisterController>().height.value,
      onChanged: (val) {
        Get.find<RegisterController>().changeHeight(val);
      },
      decoration: InputDecoration(
        labelText: "",
        hintText: "Height",
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildCityFormField() {
    return TextFormField(
      onTap: () {},
      // obscureText: true,
      initialValue: Get.find<RegisterController>().city.value,
      onChanged: (val) {
        Get.find<RegisterController>().changeCity(val);
      },
      decoration: InputDecoration(
        labelText: "",
        hintText: "City",
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildLocationFormField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "",
        hintText: "Current Location",
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildResidentialFormField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "",
        hintText: "Residential Status",
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
