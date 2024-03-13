import 'package:booking_app/app/constant/appasstes.dart';
import 'package:booking_app/app/constant/appcolors.dart';
import 'package:booking_app/app/constant/appfonts.dart';
import 'package:booking_app/app/constant/appstrings.dart';
import 'package:booking_app/app/pages/splash/splash.controller.dart';
import 'package:booking_app/app/route/path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetResponsiveView<SplashController> {
  SplashView({super.key}) {
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGreen,
        body: body(),
      ),
    );
  }

  body() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.splashLogo,
              height: 300,
              width: 300,
            ),
          ],
        ),
        Text(
          AppStrings.foodienator,
          style: AppFonts().h1.copyWith(color: AppColors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppStrings.splashMessage,
          style: AppFonts().h3.copyWith(color: AppColors.white),
        ),
        bottomButton()
      ],
    );
  }

  bottomButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppPaths.login);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.lightGreen02,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Center(
                      child: Text(AppStrings.signin,
                          style: AppFonts()
                              .h3Bold
                              .copyWith(color: AppColors.white)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
