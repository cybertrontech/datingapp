import 'dart:convert';

import 'package:datingapp/secured_storage/storage.dart';
import 'package:datingapp/constants/url_constants/api_constants.dart';
import "package:http/http.dart" as http;

class ApiUserService {
  static Future<void> createUser(
      String? email,
      String? password,
      String? first_name,
      String? last_name,
      String? gender,
      String? bio,
      String? height,
      String? dateofbirth,
      String? religion,
      String? caste,
      String? country,
      String? educationLevel,
      String? educationInstitution,
      String? employedField,
      String? work,
      String? maritialStatus) async {
    Uri url = Uri.parse("${ApiConstants.url}/user");
    Map<String, String> body = {
      "email": email.toString(),
      "password": password.toString(),
      "firstname": first_name.toString(),
      "lastname": last_name.toString(),
      "gender": gender.toString(),
      "bio": bio.toString(),
      "height": height.toString(),
      "dateofbirth": dateofbirth.toString(),
      "religion": religion.toString(),
      "caste": caste.toString(),
      "country": country.toString(),
      "educationLevel": educationLevel.toString(),
      "educationInstitution": educationInstitution.toString(),
      "employedField": employedField.toString(),
      "work": work.toString(),
      "maritialStatus": maritialStatus.toString()
    };
    http.Response response = await http.post(url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(body));
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.body);
    }
  }

  static Future<String?> profileCompletedOrNot(String? email) async {
    print(email);
    Uri url =
        Uri.parse("${ApiConstants.url}/user/completed_or_not?email=$email");
    http.Response response = await http.get(url, headers: {
      "Content-Type": "application/json",
    });
    if (response.statusCode == 200) {
      // String token = jsonDecode(response.body)["token"];
      return response.body;
    } else {
      // print(response.body);
      if (response.statusCode != 500) {
        return null;
      }
    }
  }
}
