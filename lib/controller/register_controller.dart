import 'package:datingapp/api/register_user_api.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterController extends GetxController {
  GoogleSignInAccount googleDisplayName = Get.arguments;
  RxString email = "yugalkhati570@gmail.com".obs;
  RxString password = "pythonjs".obs;
  RxString confirmPassword = "pythonjs".obs;
  RxString firstName = "yugal".obs;
  RxString lastName = "pariyar".obs;
  RxString gender = "".obs;
  RxString dob = "".obs;
  RxString caste = "Chettri".obs;
  RxString religion = "".obs;
  RxString bio = "We are peace lovers.".obs;
  RxString height = "5'6''".obs;
  //country -- always nefol
  RxString city = "Butwal".obs;
  RxString phonenumber = "9800000000".obs;
  RxString educationLevel = "SEE".obs;
  RxString educationInstitution = "Foolchowk".obs;
  RxString employedField = "".obs;
  RxString work = "Doctor".obs;
  RxString errorMessage = "".obs;
  RxString maritialStatus = "Married".obs;
  RxString profilePicture = "".obs;
  // latitude
  // longitude
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
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

  changeReligion(String value) {
    religion.value = value;
  }

  changePhonenumber(String value) {
    phonenumber.value = value;
  }

  changeeducationInstitution(String value) {
    educationInstitution.value = value;
  }

  createUser() async {
    loading.value = true;
    // print(email.value);
    // print(password.value);
    // print(firstName.value);
    // print(lastName.value);
    // print(gender.value);
    // print(bio.value);
    // print(dob.value);
    // print(height.value);
    // print(religion.value);
    // print(caste.value);
    // print(city.value);
    // print(educationLevel.value);
    // print(educationInstitution.value);
    // print(employedField.value);
    // print(work.value);
    // print(maritialStatus.value);

    if (email.value == "" ||
        password.value == "" ||
        firstName.value == "" ||
        lastName.value == "" ||
        gender.value == "" ||
        bio.value == "" ||
        height.value == "" ||
        dob.value == "" ||
        religion.value == "" ||
        city.value == "" ||
        caste.value == "" ||
        educationLevel.value == "" ||
        educationInstitution.value == "" ||
        employedField.value == "" ||
        work.value == "" ||
        maritialStatus.value == "") {
      errorMessage.value = "Fill the form correctly you dumb fuck.";
    } else {
      await ApiUserService.createUser(
        email.value,
        password.value,
        firstName.value,
        lastName.value,
        gender.value,
        bio.value,
        height.value,
        dob.value,
        religion.value,
        caste.value,
        "Nepal",
        educationLevel.value,
        educationInstitution.value,
        employedField.value,
        work.value,
        maritialStatus.value,
      );
    }
    loading.value = false;
  }
}
