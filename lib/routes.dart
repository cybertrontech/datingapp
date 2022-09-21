
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:datingapp/screen/details_screen/upload_photo/upload_image.dart';
import 'package:datingapp/screen/sign_up/sign_up_screen.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:flutter/widgets.dart';

import 'screen/details_screen/education_details/education_details.dart';
import 'screen/details_screen/gender_details/gender_details.dart';
import 'screen/details_screen/social_status_details/socail_status_details.dart';
import 'screen/forgot_password/forgot_password_screen.dart';
import 'screen/home/home_screen.dart';
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
  SocialStatusDetails.routeName:(context)=>SocialStatusDetails(),
  UploadImage.routeName:(context)=>UploadImage(),
  PersonalDetails.routeName:(context)=>PersonalDetails(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
