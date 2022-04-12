import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var visiblePassword = false.obs;
  var fieldNode = false.obs;
  var focusNode = FocusNode();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool emailIsValidate(String text) {
    return EmailValidator.validate(text);
  }

  void onFocusChanged() {
    fieldNode.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    focusNode.addListener(onFocusChanged);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    focusNode.removeListener(onFocusChanged);
    focusNode.dispose();
  }
}
