import 'package:booking_app/app/constant/appcolors.dart';
import 'package:booking_app/app/constant/appfonts.dart';
import 'package:booking_app/app/constant/appstrings.dart';
import 'package:booking_app/app/pages/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key}) {
    controller.init();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: myAppBar(context),
      body: body(),
    ));
  }

  myAppBar(context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Container(
          color: AppColors.lightGreen,
          child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Center(
                child: Text(
                  AppStrings.title,
                  style: AppFonts().h3Bold.copyWith(color: AppColors.white),
                ),
              )),
        ));
  }

  body() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: 'Enter your text here',
              labelText: 'Text Input',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    BorderSide(color: AppColors.lightGreen), // border color
              ),
              // background color
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              // prefix icon
            ),
          ),
        ],
      ),
    );
  }
}
