import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;

  var carouselController = 0.obs;
  var kategoriClicked = 0.obs;
  var fieldNode = false.obs;
  var hideLabelNavigation = false.obs;
  var focusSearchNode = FocusNode();
  var dotsCarouselController = PageController();

  void carouselChanged(int page) {
    carouselController.value = page;
  }

  void onFocusChanged() {
    fieldNode.toggle();
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
    dotsCarouselController.dispose();

    focusSearchNode.removeListener(onFocusChanged);
    focusSearchNode.dispose();

    carouselController.value = 0;
  }
}
