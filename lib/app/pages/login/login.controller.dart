import 'package:booking_app/app/pages/login/login.variable.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController with LoginVariable {
  init() {}

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        final UserCredential authResult =
            await auth.signInWithCredential(credential);
        final User? user = authResult.user;

        if (user != null) {
          // Check if user already exists in your system or create a new user
          // For example:
          // if (await doesUserExistInDatabase(user.uid)) {
          //   // User exists, do nothing
          // } else {
          //   // User does not exist, create a new user in your database
          //   await createUserInDatabase(user);
          // }

          return user;
        } else {
          print('Sign-in with Google failed: user is null');
          return null;
        }
      } else {
        print('Google sign-in aborted: user is null');
        return null;
      }
    } catch (e) {
      print('Error signing in with Google: $e');
      return null;
    }
  }
}
