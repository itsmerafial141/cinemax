import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Tooltip(
                      message: "Profile",
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(Get.width),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Get.width),
                            color: MyColors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Rafial",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.SemiBold,
                            fontSize: MyStyles.H4,
                            color: MyColors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Let’s stream your favorite movie",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.Medium,
                            fontSize: MyStyles.H6,
                            color: MyColors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Tooltip(
                      message: "Favorite",
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 32,
                          width: 32,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: MyColors.soft,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: MyColors.red,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
