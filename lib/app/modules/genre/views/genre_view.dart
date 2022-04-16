import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/genre_controller.dart';

class GenreView extends GetView<GenreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 32,
                width: Get.width,
                margin: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Text(
                        "Genre",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H4,
                          color: MyColors.white,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: "Back",
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColors.soft,
                          ),
                          child: Image(
                            height: 20,
                            width: 20,
                            image: AssetImage(
                              MyIcons.arrow_back,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: (4 / 2),
                  children: List.generate(
                    MyStrings.genreListTittle.length,
                    (index) {
                      return Obx(
                        () => Tooltip(
                          message: MyStrings.genreListTittle[index],
                          child: InkWell(
                            onTap: () {
                              controller.genreCheck.value = index + 1;
                            },
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    MyStrings.genreListImage[index],
                                  ),
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColors.soft50,
                                ),
                                child: Container(
                                  width: Get.width * 0.25,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Get.width,
                                          ),
                                          color: controller.genreCheck.value ==
                                                  index + 1
                                              ? MyColors.blueAccent
                                              : Colors.transparent,
                                          border: Border.all(
                                            width:
                                                controller.genreCheck.value ==
                                                        index + 1
                                                    ? 0
                                                    : 1,
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: controller.genreCheck.value ==
                                                index + 1
                                            ? Icon(
                                                Icons.check_rounded,
                                                color: MyColors.dark,
                                                size: 15,
                                              )
                                            : Container(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        MyStrings.genreListTittle[index],
                                        style: TextStyle(
                                          fontFamily: MyStyles.Medium,
                                          fontSize: MyStyles.H6,
                                          color: MyColors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Submit",
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      MyColors.blueAccent,
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * 0.9, 56),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H4,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
