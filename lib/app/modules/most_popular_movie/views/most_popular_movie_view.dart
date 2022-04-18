import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/most_popular_movie_controller.dart';
import '../widgets/mpm_movie_detail_card_screen.dart';

class MostPopularMovieView extends GetView<MostPopularMovieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: NotificationListener<ScrollUpdateNotification>(
          onNotification: (notification) {
            print(notification.metrics.pixels);
            controller.hightDetection.value = notification.metrics.pixels;
            return true;
          },
          child: Column(
            children: [
              Obx(
                () => AnimatedContainer(
                  height: controller.hightDetection.value >= 320 ? 56 : 0,
                  duration: Duration(milliseconds: 200),
                  child: AppBar(
                    title: Text("Most Popullar Movie"),
                    backgroundColor: MyColors.dark,
                    elevation: 0,
                  ),
                ),
              ),
              Expanded(
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
                                "Most Popular Movie",
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
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return MPMMovieDetailCardWidget(
                            index: 0,
                          );
                        },
                        separatorBuilder: (_, __) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                        // itemCount: MyStrings.listMostPopularTittle.length,
                        itemCount: 100,
                      ),
                    ],
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
