import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/values/colors.dart';

void main() {
  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.black, //set as per your  status bar color
        systemNavigationBarColor:
            MyColors.dark, //set as per your navigation bar color
        statusBarIconBrightness:
            Brightness.light, //set as per your status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL_PA,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
