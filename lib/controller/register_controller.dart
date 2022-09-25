import 'package:datingapp/api/register_user_api.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxString email = "yugalkhati570@gmail.com".obs;
  RxString password = "pythonjs".obs;
  RxString confirmPassword = "pythonjs".obs;
  RxString firstName = "yugal".obs;
  RxString lastName = "pariyar".obs;
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // print("Hello can you  hear me ?");
  }

  changeEmail(String value) {
    email.value = value;
  }

  changePassword(String value) {
    password.value = value;
  }

  changeConfirmPassword(String value) {
    confirmPassword.value = value;
  }

  changeFirstname(String value) {
    firstName.value = value;
  }

  changeLastname(String value) {
    lastName.value = value;
  }

  createUser(String? email, String? password, String? first_name,
      String? last_name) async {
    loading.value = true;
    await ApiUserService.createUser(email, password, first_name, last_name);
    loading.value = false;
  }
}
