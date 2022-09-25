import 'dart:convert';

import 'package:datingapp/components/custom_surfix_icon.dart';
import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/constants/url_constants/api_constants.dart';
import 'package:datingapp/secured_storage/storage.dart';
import 'package:http/http.dart' as http;
import 'package:datingapp/screen/details_screen/gender_details/gender_details.dart';
import 'package:datingapp/screen/forgot_password/forgot_password_screen.dart';
import 'package:datingapp/screen/home/home_screen.dart';
import 'package:datingapp/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  Future<void> login() async {
    setState(() {
      loading = true;
    });
    var url = Uri.parse("${ApiConstants.url}/login");
    Map<String, String> body = {
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
    };
    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: json.encode(body));
    if (response.statusCode == 200) {
      setState(() {
        loading = false;
      });
      try {
        int a = await SecuredStorage.storeloginInfo(json.decode(response.body));
        if (a == 1) {
        } else {
          NullThrownError();
        }
      } catch (e) {
        //SHOW ERROR HERE
        print("Sorry something went wrong.");
      }
    } else {
      setState(() {
        loading = false;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
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

  bool hidepassword = true;
  bool _passwordVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: (30)),
          buildPasswordFormField(),
          SizedBox(height: (30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: (20)),
          DefaultButton(
              text: loading == true ? "Load..." : "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Navigator.pushNamed(context, GenderDetails.routeName);
                }
                if (loading == false) {
                  login();
                }
              }),
          // MaterialButton(
          //   color: kPrimaryColor,
          //   child:Text("Continue",style: TextStyle(color: kPrimaryLightColor),),
          //   onPressed: () {
          //     if (_formKey.currentState!.validate()) {
          //       _formKey.currentState!.save();
          //       // if all are valid then go to success screen
          //       // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          //     }
          //   },
          // ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      // maxLength: 10,
      autofocus: true,
      maxLines: 1,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",

          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(
            Icons.email_outlined,
            color: Theme.of(context).primaryColorDark,
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: passwordController,
      obscureText: !_passwordVisible,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        // prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),

        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
}
