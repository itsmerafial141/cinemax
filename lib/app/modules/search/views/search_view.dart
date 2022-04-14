import 'dart:ui';

import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../home/widgets/hp_list_kategori_widget.dart';
import '../controllers/search_controller.dart';

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
                      ? Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Today",
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
                            // StaggeredGrid.count(
                            //   crossAxisCount: 1,
                            //   axisDirection: AxisDirection.r,
                            //   children: List.generate(
                            //     5,
                            //     (index) {
                            //       return Column(
                            //         children: [
                            //           Container(
                            //             height: 64,
                            //             width: 64,
                            //             decoration: BoxDecoration(
                            //               borderRadius: BorderRadius.circular(
                            //                 Get.width,
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       );
                            //     },
                            //   ),
                            // ),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (_, __) {
                                return SRCMovieDetailCard();
                              },
                              separatorBuilder: (_, __) {
                                return SizedBox(
                                  height: 10,
                                );
                              },
                              itemCount: MyStrings.listMostPopularTittle.length,
                            ),
                          ],
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

class SRCFilledScreen extends StatelessWidget {
  const SRCFilledScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HPListKategoriWidget(),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Today",
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
        SRCMovieDetailCard(),
        SizedBox(
          height: 50,
        ),
        Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Recommended for you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.SemiBold,
                  fontSize: MyStyles.H4,
                  color: MyColors.white,
                ),
              ),
              Spacer(),
              Tooltip(
                message: "See All Movies",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      "See All",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H5,
                        color: MyColors.blueAccent,
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Row(
                children: List.generate(
                  MyStrings.listMostPopularImage.length,
                  (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Tooltip(
                        message: MyStrings.listMostPopularTittle[index],
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage(
                                      MyStrings.listMostPopularImage[index],
                                      // "assets/images/blackpanther.jpg",
                                    ),
                                  ),
                                  color: MyColors.soft,
                                ),
                                // child:
                              ),
                              Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: MyColors.soft,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      MyStrings.listMostPopularTittle[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: MyStyles.SemiBold,
                                        fontSize: MyStyles.H5,
                                        color: MyColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      MyStrings.listMostPopularKategori[index],
                                      style: TextStyle(
                                        fontFamily: MyStyles.Medium,
                                        fontSize: MyStyles.H7,
                                        color: MyColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SRCMovieDetailCard extends StatelessWidget {
  const SRCMovieDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 147,
                width: 112,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      MyStrings.listMostPopularImage[0],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black54,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: MyColors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.5",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H6,
                          color: MyColors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: MyColors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Premium",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Medium,
                    fontSize: MyStyles.H7,
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width * 0.6,
                child: Text(
                  MyStrings.listMostPopularTittle[0],
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
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
              Row(
                children: [
                  Icon(
                    Icons.date_range,
                    color: MyColors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2021",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H6,
                      color: MyColors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled_sharp,
                    color: MyColors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "148 Minutes",
                    textAlign: TextAlign.center,
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
                    padding: EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColors.blueAccent,
                      ),
                    ),
                    child: Text(
                      "PG-13",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H6,
                        color: MyColors.blueAccent,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_movies_rounded,
                    color: MyColors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Action",
                    textAlign: TextAlign.center,
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
                    "Movie",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H6,
                      color: MyColors.white,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
