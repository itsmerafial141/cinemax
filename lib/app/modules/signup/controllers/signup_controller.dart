import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  late AnimationController animationController;

  var visiblePassword = false.obs;
  var fieldNode = false.obs;
  var focusNode = FocusNode();

  var agreePolice = false.obs;

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

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
        // animationController.reset();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    focusNode.removeListener(onFocusChanged);
    focusNode.dispose();

    animationController.dispose();
  }
}
