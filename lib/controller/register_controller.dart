import 'package:datingapp/api/register_user_api.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxString email = "yugalkhati570@gmail.com".obs;
  RxString password = "pythonjs".obs;
  RxString confirmPassword = "pythonjs".obs;
  RxString firstName = "yugal".obs;
  RxString lastName = "pariyar".obs;
  RxString gender = "".obs;
  RxString dob = "".obs;
  RxString caste = "".obs;
  RxString bio = "".obs;
  RxString height = "5'6''".obs;
  //country -- always nefol
  RxString city = "".obs;
  RxString educationLevel = "SEE".obs;
  RxString educationInstitution = "".obs;
  RxString employedField = "i".obs;
  RxString work = "Doctor".obs;
  RxString maritialStatus = "Married".obs;
  // latitude
  // longitude
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

  changeGender(String value) {
    gender.value = value;
  }

  changeDate(String value) {
    dob.value = value;
  }

  changeHeight(String value) {
    height.value = value;
  }

  changeWork(String value) {
    work.value = value;
  }

  changeCity(String value) {
    city.value = value;
  }

  changeEmployedField(String value) {
    employedField.value = value;
  }

  changeBio(String value) {
    bio.value = value;
  }

  changeCaste(String value) {
    caste.value = value;
  }

  changeeducationInstitution(String value) {
    educationInstitution.value = value;
  }

  createUser() async {
    print(email.value);
    print(password.value);
    print(firstName.value);
    print(lastName.value);
    print(gender.value);
    print(bio.value);
    print(dob.value);
    print(height.value);
    print(city.value);
    print(educationLevel.value);
    print(educationInstitution.value);
    print(employedField.value);
    print(work.value);
    print(maritialStatus.value);
  }

  // createUser(String? email, String? password, String? first_name,
  //     String? last_name) async {
  //   loading.value = true;
  //   await ApiUserService.createUser(email, password, first_name, last_name); //   loading.value = false;
  // }
}
