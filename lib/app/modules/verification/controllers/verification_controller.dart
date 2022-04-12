import 'package:cinemax/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  var codeError = false.obs;
  var listCodeSubmitted = [
    false,
    false,
    false,
    false,
  ].obs;

  late List listEditingController = [];
  late List listEditingControllerValues = [];

  bool codeIsEmpty() {
    return listEditingControllerValues[0] == "" ||
        listEditingControllerValues[1] == "" ||
        listEditingControllerValues[2] == "" ||
        listEditingControllerValues[3] == "";
  }

  void verifyCode() {
    listEditingControllerValues = [
      listEditingController[0].text,
      listEditingController[1].text,
      listEditingController[2].text,
      listEditingController[3].text,
    ];
    print(codeIsEmpty());
    if (!codeIsEmpty()) {
      Get.toNamed(AppPages.INITIAL_NP);
      print("Verify");
    } else {
      print("Code is empty");
    }
  }

  @override
  void onInit() {
    super.onInit();
    listEditingController = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];

    listEditingControllerValues = [
      "",
      "",
      "",
      "",
    ];
  }

  @override
  void dispose() {
    super.dispose();
    listEditingController.clear();
    listCodeSubmitted.clear();
    listEditingControllerValues.clear();
  }
}
