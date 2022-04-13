import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentNavigation = 0.obs;

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
