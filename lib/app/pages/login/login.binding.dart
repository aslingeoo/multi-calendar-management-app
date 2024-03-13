import 'package:booking_app/app/pages/login/login.controller.dart';
import 'package:get/get.dart';



class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }

}