import 'dart:math' as math;

import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  var fieldNode = false.obs;
  var isFilled = false.obs;
  var theresAreActorName = false.obs;
  var getNameFromSearch = "".obs;

  var focusSearchNode = FocusNode();
  var chars = 'abcdefghijklmnopqrstuvwxyz';
  var intonation = 'aiueo';

  late TextEditingController searchController;

  List<Map<String, String>> listDataMovieBySearch() {
    return MyStrings.listDataMovie
        .where((element) =>
            element["tittle"]!.toLowerCase().contains(getNameFromSearch.value))
        .toList();
  }

  List<Map<String, String>> listCastAndActorBySearch() {
    return MyStrings.listCastAndCrew
        .where((element) =>
            element["name"]!.toLowerCase().contains(getNameFromSearch.value))
        .toList();
  }

  void checkActorName() {
    // var actorList = ;
    var actorName = [
      "Rafial",
      "Fitra",
      "Alamsyah",
    ];
    for (int x = 0; x < actorName.length; x++) {
      if (getNameFromSearch.value.toLowerCase() == actorName[x].toLowerCase()) {
        theresAreActorName.value = true;
        break;
      } else {
        theresAreActorName.value = false;
      }
    }
  }

  String getRandomString(int length) {
    return List<String>.generate(
      length,
      (index) {
        return index == 0
            ? chars[math.Random().nextInt(
                chars.length,
              )]
                .toUpperCase()
            : index.isOdd
                ? intonation[math.Random().nextInt(
                    intonation.length,
                  )]
                : chars[math.Random().nextInt(
                    chars.length,
                  )];
      },
    ).join();
  }

  void onFocusChanged() {
    fieldNode.toggle();
  }

  void searchCondition(String value) {
    if (value != "") {
      print("terisi : " + value);
      isFilled.value = true;
      getNameFromSearch.value = value;
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
