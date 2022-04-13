import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;

  var carouselController = 0.obs;
  var kategoriClicked = 0.obs;
  var currentNavigation = 0.obs;
  var fieldNode = false.obs;
  var hideLabelNavigation = false.obs;
  var focusSearchNode = FocusNode();
  var dotsCarouselController = PageController();

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

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
