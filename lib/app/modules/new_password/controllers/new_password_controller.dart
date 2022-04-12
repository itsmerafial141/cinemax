import 'package:cinemax/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  var passwordError = false.obs;

  var visibleNewPassword = false.obs;
  var visibleConfirmPassword = false.obs;
  var fieldNewPasswordNode = false.obs;
  var fieldConfirmPasswordNode = false.obs;
  var focusNewPasswordNode = FocusNode();
  var focusConfirmPasswordNode = FocusNode();

  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  bool bothPasswordIsSame() {
    return newPasswordController.text == confirmPasswordController.text;
  }

  void onNewFocusChanged() {
    fieldNewPasswordNode.toggle();
  }

  void onConfirmFocusChanged() {
    fieldConfirmPasswordNode.toggle();
  }

  void resetingPassword() {
    if (bothPasswordIsSame()) {
      Get.offAllNamed(AppPages.INITIAL_LG);
      passwordError.value = false;
    } else {
      passwordError.value = true;
    }
  }

  @override
  void onInit() {
    super.onInit();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    focusNewPasswordNode.addListener(onNewFocusChanged);
    focusConfirmPasswordNode.addListener(onConfirmFocusChanged);
  }

  @override
  void dispose() {
    super.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    passwordError.value = false;

    focusNewPasswordNode.removeListener(onNewFocusChanged);
    focusNewPasswordNode.dispose();
    focusConfirmPasswordNode.removeListener(onConfirmFocusChanged);
    focusConfirmPasswordNode.dispose();
  }
}
