import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  var fieldNode = false.obs;
  var isFilled = false.obs;
  var focusSearchNode = FocusNode();

  late TextEditingController searchController;

  void onFocusChanged() {
    fieldNode.toggle();
  }

  void searchCondition(String value) {
    if (value != "") {
      print("terisi : " + value);
      isFilled.value = true;
    } else if (value == "") {
      print("Kozong : " + value);
      isFilled.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();

    focusSearchNode.addListener(onFocusChanged);
  }

  @override
  void dispose() {
    super.dispose();

    searchController.dispose();
    focusSearchNode.removeListener(onFocusChanged);
    focusSearchNode.dispose();
  }
}
