import 'package:datingapp/binding/register_binding.dart';
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:datingapp/screen/details_screen/upload_photo/upload_image.dart';
import 'package:datingapp/screen/home/main_page/profile_page/profile_page.dart';
import 'package:datingapp/screen/sign_up/sign_up_screen.dart';
import 'package:datingapp/screen/splash/splash_page.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'screen/details_screen/education_details/education_details.dart';
import 'screen/details_screen/gender_details/gender_details.dart';
import 'screen/details_screen/social_status_details/socail_status_details.dart';
import 'screen/forgot_password/forgot_password_screen.dart';
import 'screen/home/home_screen.dart';
import 'screen/home/main_page/home_page/home_page.dart';
import 'screen/sign_in/sign_in_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  GenderDetails.routeName: (context) => GenderDetails(),
  EducationDetails.routeName: (context) => EducationDetails(),
  SocialStatusDetails.routeName: (context) => SocialStatusDetails(),
  UploadImage.routeName: (context) => UploadImage(),
  PersonalDetails.routeName: (context) => PersonalDetails(),
  HomePage.routeName: (context) => HomePage(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};

class RoutesClass {
  static List<GetPage> route = [
    GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
    GetPage(name: SignInScreen.routeName, page: () => SignInScreen()),
    GetPage(
        name: ForgotPasswordScreen.routeName,
        page: () => ForgotPasswordScreen()),
    GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
    GetPage(
        name: SignUpScreen.routeName,
        page: () => SignUpScreen(),
        binding: RegisterBinding()),
    GetPage(name: GenderDetails.routeName, page: () => GenderDetails()),
    GetPage(name: EducationDetails.routeName, page: () => EducationDetails()),
    GetPage(
        name: SocialStatusDetails.routeName, page: () => SocialStatusDetails()),
    GetPage(name: UploadImage.routeName, page: () => UploadImage()),
    GetPage(name: PersonalDetails.routeName, page: () => PersonalDetails()),
    // GetPage(name: ProfilePage.routeName, page: () => ProfilePage()),
  ];
}
