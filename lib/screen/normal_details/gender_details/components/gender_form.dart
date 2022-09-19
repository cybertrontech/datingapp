import 'package:datingapp/components/custom_surfix_icon.dart';
import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';






class GenderForm extends StatefulWidget {
  @override
  _GenderFormState createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: (30)),
          datetimepicker(),
          SizedBox(height: (30)),
          buildHeightFormField(),
          SizedBox(height: (30)),
          buildLocationFormField(),
          SizedBox(height: (30)),
          buildResidentialFormField(),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushNamed(context, SignInScreen.routeName);
                }
              }
          ),

        ],
      ),
    );
  }




  datetimepicker() {
    return  DateTimePicker(
      initialValue: '',
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      dateLabelText: 'Date of Birth(DD/MM/YYYY)',
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
      onChanged: (val) => print(val),
      validator: (val) {
        print(val);
        // return null;
      },
      onSaved: (val) => print(val),
    );
  }

  TextFormField buildHeightFormField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "",
        hintText: "Height ",hintStyle:  TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
     );
  }

  TextFormField buildLocationFormField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "",
        hintText: "Current Location",hintStyle:  TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildResidentialFormField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "",
        hintText: "Residential Status",hintStyle:  TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
