// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../controllers/search_controller.dart';
import '../screens/src_filled_screen.dart';
import '../widgets/src_movie_detail_card_screen.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchController());
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    focusNode: controller.focusSearchNode,
                    controller: controller.searchController,
                    cursorColor: MyColors.blueAccent,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(color: MyColors.grey),
                    onChanged: (value) {
                      controller.searchCondition(value);
                      controller.checkActorName();
                      var a = MyStrings.listCastAndCrew.where((element) =>
                          element["name"]!
                              .toLowerCase()
                              .contains(controller.getNameFromSearch.value));
                      for (int x = 0; x < a.length; x++) {
                        print(x.toString() +
                            " | " +
                            a.toList()[x]["name"].toString());
                      }
                      print(controller.listCastAndActorBySearch());
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      prefixIconColor: MyColors.grey,
                      prefixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 20,
                          top: 10,
                          bottom: 10,
                          end: 10,
                        ),
                        child: Image(
                          image: AssetImage(MyIcons.search),
                          color: controller.fieldNode.isTrue
                              ? MyColors.grey
                              : MyColors.grey50,
                        ),
                      ),
                      hintText: "Type tittle, categories yers, etc",
                      hintStyle: TextStyle(
                        color: MyColors.grey50,
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: MyColors.soft,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () {
                  return controller.isFilled.value == true
                      ? controller.listDataMovieBySearch().isNotEmpty ||
                              controller.listCastAndActorBySearch().isNotEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.listCastAndActorBySearch().isNotEmpty
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              "Actors",
                                              textAlign: TextAlign.center,
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
                                                  width: 5,
                                                ),
                                                Row(
                                                  children: List.generate(
                                                    controller
                                                        .listCastAndActorBySearch()
                                                        .length,
                                                    (index) {
                                                      return Tooltip(
                                                        message: controller
                                                            .listCastAndActorBySearch()[
                                                                index]["name"]
                                                            .toString(),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            20,
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 64,
                                                                width: 64,
                                                                margin: EdgeInsets
                                                                    .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    Get.width,
                                                                  ),
                                                                  color: MyColors
                                                                      .blueAccent,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image:
                                                                        AssetImage(
                                                                      controller
                                                                          .listCastAndActorBySearch()[
                                                                              index]
                                                                              [
                                                                              "image"]
                                                                          .toString(),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Container(
                                                                width: 80,
                                                                child: Text(
                                                                  controller
                                                                      .listCastAndActorBySearch()[
                                                                          index]
                                                                          [
                                                                          "name"]
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  maxLines: 2,
                                                                  softWrap:
                                                                      false,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        MyStyles
                                                                            .SemiBold,
                                                                    fontSize:
                                                                        MyStyles
                                                                            .H6,
                                                                    color: MyColors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          controller
                                                  .listDataMovieBySearch()
                                                  .isNotEmpty
                                              ? Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 20),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        "Movie Related",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              MyStyles.SemiBold,
                                                          fontSize: MyStyles.H4,
                                                          color: MyColors.white,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Tooltip(
                                                        message:
                                                            "See All Movies Related",
                                                        child: InkWell(
                                                          onTap: () {},
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: 10,
                                                              vertical: 5,
                                                            ),
                                                            child: Text(
                                                              "See All",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    MyStyles
                                                                        .Medium,
                                                                fontSize:
                                                                    MyStyles.H5,
                                                                color: MyColors
                                                                    .blueAccent,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              : Container(),
                                        ],
                                      )
                                    : Container(),
                                SizedBox(
                                  height: 20,
                                ),
                                ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    return SRCMovieDetailCardWidget(
                                      index: index,
                                      data: controller.listDataMovieBySearch(),
                                    );
                                  },
                                  separatorBuilder: (_, __) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount:
                                      controller.listDataMovieBySearch().length,
                                ),
                              ],
                            )
                          : Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.2,
                                  ),
                                  Image(
                                    image: AssetImage(
                                      "assets/icons/no-results 1.png",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: Get.width * 0.5,
                                    child: Text(
                                      "we are sorry, we can not find the movie :(",
                                      textAlign: TextAlign.center,
                                      maxLines: 10,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: MyStyles.SemiBold,
                                        fontSize: MyStyles.H4,
                                        color: MyColors.whiteGrey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: Get.width * 0.5,
                                    child: Text(
                                      "Find your movie by Type title, categories, years, etc ",
                                      textAlign: TextAlign.center,
                                      maxLines: 10,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: MyStyles.Medium,
                                        fontSize: MyStyles.H6,
                                        color: MyColors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                      : SRCFilledScreen();
                },
              ),
              SizedBox(
                height: Get.height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
