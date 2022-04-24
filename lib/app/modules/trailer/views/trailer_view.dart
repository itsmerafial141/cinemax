import 'package:chewie/chewie.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/icons.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/trailer_controller.dart';

class TrailerView extends GetView<TrailerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.soft,
                        ),
                        child: Image(
                          image: AssetImage(
                            MyIcons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: Get.width * 0.5,
                      child: Text(
                        controller
                            .getListUpcomingMovie()[0]["tittle"]
                            .toString(),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H4,
                          color: MyColors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Tooltip(
                      message: "Favorite",
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColors.soft,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: MyColors.red,
                            size: 20,
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
              Obx(
                () => Container(
                  height: Get.width * 0.5,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColors.soft,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        controller
                            .getListUpcomingMovie()[0]["thumbnail"]
                            .toString(),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: controller.startTrailer.isFalse
                      ? InkWell(
                          onTap: () {
                            controller.playVideoController();
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Get.width),
                              color: MyColors.white.withOpacity(0.5),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                color: MyColors.white.withOpacity(0.5),
                              ),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: MyColors.blueAccent,
                                size: 40,
                              ),
                            ),
                          ),
                        )
                      : GetBuilder<TrailerController>(
                          init: TrailerController(),
                          builder: (controller) => Expanded(
                            child: controller.chewieController != null &&
                                    controller
                                        .chewieController!
                                        .videoPlayerController
                                        .value
                                        .isInitialized
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Chewie(
                                      controller: controller.chewieController!,
                                    ),
                                  )
                                : Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: CircularProgressIndicator(),
                                  ),
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  controller.getListUpcomingMovie()[0]["tittle"].toString(),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H4,
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.date_range_rounded,
                      color: MyColors.grey,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller
                          .getListUpcomingMovie()[0]["release"]
                          .toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H6,
                        color: MyColors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 1,
                      color: MyColors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller.getListUpcomingMovie()[0]["genre"].toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H6,
                        color: MyColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Synopsis",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H4,
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: MyStyles.H5,
                      color: MyColors.whiteGrey,
                    ),
                    children: [
                      TextSpan(
                        text: controller
                            .getListUpcomingMovie()[0]["Synopsis"]
                            .toString(),
                      ),
                      TextSpan(
                        text: " More",
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H5,
                          color: MyColors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Cast and Crew",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H4,
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        controller.getListUpcomingMovieCastAndCrew().length,
                        (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Get.width),
                                    color: MyColors.blueAccent,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        controller
                                            .getListUpcomingMovieCastAndCrew()[
                                                index]["image"]
                                            .toString(),
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
                                      controller
                                          .getListUpcomingMovieCastAndCrew()[
                                              index]["name"]
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: MyStyles.SemiBold,
                                        fontSize: MyStyles.H5,
                                        color: MyColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      controller
                                          .getListUpcomingMovieCastAndCrew()[
                                              index]["position"]
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: MyStyles.Medium,
                                        fontSize: MyStyles.H7,
                                        color: MyColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Gallery",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H4,
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        controller.getListUpcomingMovieGallery().length,
                        (index) {
                          return Container(
                            height: Get.width * 0.4,
                            width: Get.width * 0.7,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.soft,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  controller
                                      .getListUpcomingMovieGallery()[index]
                                          ["image"]
                                      .toString(),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.width * 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
