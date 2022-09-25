import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecuredStorage {
  static const FlutterSecureStorage storage = FlutterSecureStorage();

  static Future<int> storeloginInfo(dynamic loginInfoState) async {
    try {
      await storage.write(key: "id", value: loginInfoState["id"]);
      await storage.write(key: "token", value: loginInfoState["token"]);
      // await storage.write(key: "image", value: loginInfoState["image"]);
      // await storage.write(
      //     key: "first_name", value: loginInfoState["first_name"]);

      return 1;
    } catch (e) {
      return 0;
    }
  }

  // static Future<String?> getFirstname() async {
  //   String? firstName = await storage.read(key: "first_name");
  //   if (firstName == null) {
  //     return null;
  //   } else {
  //     return firstName;
  //   }
  // }

  // static Future<String?> getUserImage() async {
  //   String? userImage = await storage.read(key: "image");
  //   if (userImage == null) {
  //     return null;
  //   } else {
  //     return userImage;
  //   }
  // }

  static Future<String?> getToken() async {
    String? token = await storage.read(key: "token");
    if (token == null) {
      return null;
    } else {
      return token;
    }
  }

  static Future<String?> getUserId() async {
    String? userId = await storage.read(key: "id");
    if (userId == null) {
      return null;
    } else {
      return userId;
    }
  }

  static Future<int?> removeToken() async {
    try {
      await storage.deleteAll();
      // print(Securestorage.getToken());
      return 1;
    } catch (e) {
      print("Something is wrong");
      return 0;
    }
  }
}
