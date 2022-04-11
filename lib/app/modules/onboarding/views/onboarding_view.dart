import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.dotsPageController,
        onPageChanged: (value) {
          controller.pageChanged(value);
        },
        children: List.generate(
          MyStrings.onbListTittle.length,
          (index) {
            return Container(
              width: Get.width,
              height: Get.height,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
              ),
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                color: MyColors.black,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      color: MyColors.black,
                      child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          MyStrings.onbListImage[index],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: MyColors.dark,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            MyStrings.onbListTittle[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyStyles.SemiBold,
                              fontSize: MyStyles.H3,
                              color: MyColors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            MyStrings.onbListContentTittle[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyStyles.Medium,
                              fontSize: MyStyles.H5,
                              color: MyColors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 40),
        color: MyColors.dark,
        child: Row(
          children: [
            Obx(
              () {
                return AnimatedSmoothIndicator(
                  onDotClicked: (index) {
                    controller.dotsPageController.animateToPage(
                      index,
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    );
                  },
                  activeIndex: controller.pageController.value,
                  count: MyStrings.onbListTittle.length,
                  effect: ExpandingDotsEffect(
                    dotColor: MyColors.blueAccent50,
                    activeDotColor: MyColors.blueAccent,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                );
              },
            ),
            Spacer(),
            Tooltip(
              message: "Skip",
              child: Obx(
                () => DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(18),
                  color: MyColors.blueAccent,
                  padding: EdgeInsets.all(5),
                  dashPattern: [
                    60,
                    controller.pageController.value ==
                            MyStrings.onbListTittle.length - 1
                        ? 10
                        : 180 / (controller.pageController.value + 1)
                    // controller.pageController.value == 0
                    //     ? 180
                    //     : controller.pageController.value == 1
                    //         ? 90
                    //         : 10
                  ],
                  strokeCap: StrokeCap.round,
                  strokeWidth: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.dotsPageController.animateToPage(
                        MyStrings.onbListTittle.length - 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(55, 30),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(30, 55),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        MyColors.blueAccent,
                      ),
                    ),
                    child: controller.pageController.value ==
                            MyStrings.onbListTittle.length - 1
                        ? Text(
                            "GO",
                            style: TextStyle(
                              fontFamily: MyStyles.SemiBold,
                              fontSize: MyStyles.H5,
                              color: MyColors.dark
                            ),
                          )
                        : Icon(
                            Icons.arrow_right,
                            color: MyColors.dark,
                          ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
