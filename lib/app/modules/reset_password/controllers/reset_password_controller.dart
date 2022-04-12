import 'package:cinemax/app/routes/app_pages.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  var emailError = false.obs;

  late TextEditingController emailController;

  bool emailIsValidate(String text) {
    return EmailValidator.validate(text);
  }

  void resetPassword() {
    if (emailIsValidate(emailController.text)) {
      emailError.value = false;
      Get.toNamed(AppPages.INITIAL_VR);
    } else {
      emailError.value = true;
    }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailError.value = false;
  }
}
