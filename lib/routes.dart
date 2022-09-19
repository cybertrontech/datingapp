
import 'package:datingapp/screen/normal_details/gender_details/components/widget/slidedowncontainer.dart';
import 'package:datingapp/screen/sign_up/sign_up_screen.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:flutter/widgets.dart';

import 'screen/forgot_password/forgot_password_screen.dart';
import 'screen/home/home_screen.dart';
import 'screen/normal_details/education_details/education_details.dart';
import 'screen/normal_details/gender_details/gender_details.dart';
import 'screen/sign_in/sign_in_screen.dart';




// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  GenderDetails.routeName:(context)=> GenderDetails(),
  EducationDetails.routeName:(context)=>EducationDetails(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
