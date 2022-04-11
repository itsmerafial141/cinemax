
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = 0.obs;
  final dotsPageController = PageController();

  void pageChanged(int page) {
    pageController.value = page;
  }

  @override
  void dispose() {
    super.dispose();
    pageController.value = 0;
    dotsPageController.dispose();
  }
}
