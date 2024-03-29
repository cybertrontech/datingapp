import 'package:flutter/material.dart';


const kPrimaryColor = Color.fromRGBO(255, 115, 183, 0.8862745098039215);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryNavbuttonColor = Color.fromRGBO(255, 115, 183, 0.8862745098039215);


const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [  Color.fromRGBO(204, 88, 144, 1), Color.fromRGBO(239, 119, 177, 1.0)
  ],
);
const kbackgroundcolor = Color(0xFFFCF7FD);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF3A3232);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp nameValidationRegExp =RegExp('');
final RegExp lastnameValidationRegExp =RegExp('');
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Name";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((15)),
    borderSide: BorderSide(color: kTextColor),
  );
}


