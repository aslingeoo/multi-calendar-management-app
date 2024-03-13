import 'package:booking_app/app/pages/login/login.variable.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController with LoginVariable {
  init() {}

  Future<User?> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult = await auth.signInWithCredential(credential);
      final User? user = authResult.user;
      return user;
    }
    return null;
  } catch (e) {
    print(e.toString());
    return null;
  }
}

}
