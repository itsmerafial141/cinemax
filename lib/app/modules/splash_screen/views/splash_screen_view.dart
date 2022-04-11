import 'package:cinemax/app/modules/homepage/views/homepage_view.dart';
import 'package:cinemax/app/modules/onboarding/views/onboarding_view.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart' as splash;
import 'package:splash_screen_view/SplashScreenView.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash.SplashScreenView(
        navigateRoute: HomepageView(),
        duration: 5000,
        imageSize: 130,
        imageSrc: "assets/icons/live_tv_black_24dp 1.png",
        text: "CINEMAX",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: MyStyles.H1,
          fontFamily: MyStyles.SemiBold,
        ),
        colors: [
          MyColors.blueAccent,
          MyColors.blueAccent,
          MyColors.white,
          MyColors.white,
          MyColors.blueAccent,
          MyColors.white,
        ],
        backgroundColor: MyColors.dark,
      ),
    );
  }
}
