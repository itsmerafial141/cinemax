import 'package:cinemax/app/modules/download/views/download_view.dart';
import 'package:cinemax/app/modules/home/views/home_view.dart';
import 'package:cinemax/app/modules/profile/views/profile_view.dart';
import 'package:cinemax/app/modules/search/views/search_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Obx(
        () => IndexedStack(
          index: controller.currentNavigation.value,
          children: [
            HomeView(),
            SearchView(),
            DownloadView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: MyColors.dark,
        height: Get.height * 0.1,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            MyStrings.listIconNavigation.length,
            (index) {
              return Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Tooltip(
                    message: MyStrings.listIconNavigationLabel[index],
                    child: InkWell(
                      onTap: () {
                        controller.currentNavigation.value = index;
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: AnimatedContainer(
                        curve: Curves.easeInOut,
                        duration: Duration(milliseconds: 200),
                        width: controller.currentNavigation.value == index
                            ? controller
                                    .textSize(
                                      MyStrings.listIconNavigationLabel[index],
                                      TextStyle(
                                        fontFamily: MyStyles.Medium,
                                        fontSize: MyStyles.H6,
                                        color: MyColors.blueAccent,
                                      ),
                                    )
                                    .width +
                                50 +
                                10
                            : 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: controller.currentNavigation.value == index
                              ? MyColors.soft
                              : MyColors.dark,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              color: controller.currentNavigation.value == index
                                  ? MyColors.blueAccent
                                  : MyColors.grey,
                              image: AssetImage(
                                MyStrings.listIconNavigation[index],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: controller.currentNavigation.value == index
                                  ? controller
                                      .textSize(
                                        MyStrings
                                            .listIconNavigationLabel[index],
                                        TextStyle(
                                          fontFamily: MyStyles.Medium,
                                          fontSize: MyStyles.H6,
                                        ),
                                      )
                                      .width
                                  : 0,
                              child: Text(
                                MyStrings.listIconNavigationLabel[index],
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                style: TextStyle(
                                  fontFamily: MyStyles.Medium,
                                  fontSize: MyStyles.H6,
                                  color: controller.currentNavigation.value ==
                                          index
                                      ? MyColors.blueAccent
                                      : MyColors.grey,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
