import 'package:booking_app/app/pages/login/login.variable.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoginVariable {
  init() {}

  Future<void> handleSignIn() async {
    try {
      await googleSignIn.signIn();
      // Successfully signed in, handle the next steps like navigating to the next screen.
    } catch (error) {
      print('Error signing in: $error');
    }
  }
}
