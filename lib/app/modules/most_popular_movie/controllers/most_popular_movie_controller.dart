import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MostPopularMovieController extends GetxController {
  var hightDetection = 0.0.obs;

  void highFetection(double value) {
    hightDetection.value = value;
  }

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
