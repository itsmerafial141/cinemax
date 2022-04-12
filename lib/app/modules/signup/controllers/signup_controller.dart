import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  var visiblePassword = false.obs;
  var fieldNode = false.obs;
  var focusNode = FocusNode();

  bool emailIsValidate(String text) {
    return EmailValidator.validate(text);
  }

  void onFocusChanged() {
    fieldNode.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    fullnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    focusNode.addListener(onFocusChanged);
  }

  @override
  void dispose() {
    super.dispose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    focusNode.removeListener(onFocusChanged);
    focusNode.dispose();
  }
}
