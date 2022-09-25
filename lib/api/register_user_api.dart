import 'dart:convert';

import 'package:datingapp/secured_storage/storage.dart';
import 'package:datingapp/constants/url_constants/api_constants.dart';
import "package:http/http.dart" as http;

class ApiUserService {
  static Future<void> createUser(String? email, String? password,
      String? first_name, String? last_name) async {
    String? token = await SecuredStorage.getToken();
    Uri url = Uri.parse("${ApiConstants.url}/user");
    Map<String, String> body = {
      "email": email.toString(),
      "password": password.toString(),
      "firstname": first_name.toString(),
      "lastname": last_name.toString()
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
}
