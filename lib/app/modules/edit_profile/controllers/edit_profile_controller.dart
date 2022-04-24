import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  var fullnameError = false.obs;
  var emailError = false.obs;
  var passwordError = false.obs;
  var phoneError = false.obs;

  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;

  bool emailIsValidate(String text) {
    return EmailValidator.validate(text);
  }

  bool fullnameValidate(String text) {
    return fullnameController.text.split(' ').length > 1;
  }

  bool passwordIsValidate(String text) {
    if (text.isNotEmpty) {
      if (text[0].contains(text[0].toUpperCase()) &&
          text.length > 6 &&
          !text.contains(' ')) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool phoneIsValidate(String text) {
    return text.isNotEmpty && text.length > 11 && text.isPhoneNumber;
  }

  bool fieldValidate() {
    // fullname
    if (fullnameValidate(fullnameController.text)) {
      fullnameError.value = false;
    } else {
      fullnameError.value = true;
    }
    // email
    if (emailIsValidate(emailController.text)) {
      emailError.value = false;
    } else {
      emailError.value = true;
    }
    // password
    if (passwordIsValidate(passwordController.text)) {
      passwordError.value = false;
    } else {
      passwordError.value = true;
    }
    // phone
    if (phoneIsValidate(phoneController.text)) {
      phoneError.value = false;
    } else {
      phoneError.value = true;
    }

    if (fullnameError.value == false &&
        emailError.value == false &&
        passwordError.value == false &&
        phoneError.value == false) {
      return true;
    } else {
      return false;
    }
  }

  void editProfile() {
    if (fieldValidate()) {
      print("Saves");
    } else {
      print("Error");
    }
  }

  @override
  void onInit() {
    super.onInit();
    fullnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    fullnameError.value = false;
    emailError.value = false;
  }
}
