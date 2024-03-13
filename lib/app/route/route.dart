import 'package:booking_app/app/pages/home/home.bindings.dart';
import 'package:booking_app/app/pages/home/home.view.dart';
import 'package:booking_app/app/pages/login/login.binding.dart';
import 'package:booking_app/app/pages/login/login.view.dart';
import 'package:booking_app/app/pages/splash/splash.binding.dart';
import 'package:booking_app/app/pages/splash/splash.view.dart';
import 'package:booking_app/app/route/path.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  AppPages._();
  static const inital = AppPaths.splash;
  static final route = [
    GetPage(
        name: AppPaths.splash,
        binding: SplashBindings(),
        page: () => SplashView()),
    GetPage(
        name: AppPaths.login, binding: LoginBinding(), page: () => LoginView()),
    GetPage(
        name: AppPaths.home, binding: HomeBindings(), page: () => HomeView()),
  ];
}
