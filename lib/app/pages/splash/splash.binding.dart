import 'package:booking_app/app/pages/splash/splash.controller.dart';
import 'package:get/get.dart';



class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
