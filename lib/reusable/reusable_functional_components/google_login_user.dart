import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginDatingApp extends GoogleSignIn {
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> googleLogin() => _googleSignIn.signIn();
}
