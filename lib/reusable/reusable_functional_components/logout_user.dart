import 'package:datingapp/screen/sign_in/sign_in_screen.dart';
import 'package:datingapp/secured_storage/storage.dart';
import "package:get/get.dart";

logout() async {
  int? a = await SecuredStorage.removeToken();
  if (a != null) {
    if (a == 1) {
      Get.offAndToNamed(SignInScreen.routeName);
    } else {
      print("something went wrong.");
    }
  } else {
    print("something went wrong.");
  }
}
