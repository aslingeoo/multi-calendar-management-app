import 'package:booking_app/app/constant/appasstes.dart';
import 'package:booking_app/app/constant/appcolors.dart';
import 'package:booking_app/app/constant/appfonts.dart';
import 'package:booking_app/app/constant/appstrings.dart';
import 'package:booking_app/app/pages/login/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetResponsiveView<LoginController> {
  LoginView({super.key}) {
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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/login.png",
                  height: 400,
                  width: 300,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.welcomeText,
              style: AppFonts().h1.copyWith(color: AppColors.black),
            ),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 5,
            ),
            // buildErrorText(controller
            //     .validatePassword(controller.passwordController.text)),
            const SizedBox(
              height: 10,
            ),
            // Sign In Button
            ElevatedButton(
              onPressed: () {
                controller.signInWithGoogle();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.white),
                  elevation: MaterialStateProperty.all<double>(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ))),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.google,
                      style: AppFonts().h2.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            )
            // Recovery Password Icon
          ],
        ),
      ),
    );
  }

  Widget buildErrorText(error) {
    return error != null
        ? Text(
            error,
            style: const TextStyle(color: Colors.red),
          )
        : const SizedBox.shrink();
  }
}
