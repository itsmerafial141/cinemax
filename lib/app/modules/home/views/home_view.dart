import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/icons.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../values/styles.dart';
import '../controllers/home_controller.dart';
import '../widgets/hp_list_kategori_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
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
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width),
                        color: MyColors.blueAccent,
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
                        onTap: () {
                          Get.toNamed(AppPages.INITIAL_WL);
                        },
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
                      suffixIconColor: MyColors.grey,
                      suffixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: 20,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 1,
                              height: 10,
                              color: controller.fieldNode.isTrue
                                  ? MyColors.grey
                                  : MyColors.grey50,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Tooltip(
                              message: "Options",
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(AppPages.INITIAL_GR);
                                },
                                borderRadius: BorderRadius.circular(Get.width),
                                child: Image(
                                  image: AssetImage(MyIcons.filter),
                                  color: controller.fieldNode.isTrue
                                      ? MyColors.grey
                                      : MyColors.grey50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      hintText: "Search a tittle..",
                      hintStyle: TextStyle(color: MyColors.grey50),
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
              CarouselSlider.builder(
                itemCount: MyStrings.listCarouselImage.length,
                itemBuilder: (_, index, __) {
                  return Obx(
                    () => AnimatedOpacity(
                      duration: Duration(milliseconds: 500),
                      opacity: controller.carouselController.value == index
                          ? 1
                          : 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.soft,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              MyStrings.listCarouselImage[index],
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.black87,
                                  ],
                                  transform: GradientRotation(1.5708),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 25,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    MyStrings.listCarouselTittle[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: MyStyles.SemiBold,
                                      fontSize: MyStyles.H4,
                                      color: MyColors.white,
                                    ),
                                  ),
                                  Text(
                                    MyStrings.listCarouselDate[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: MyStyles.Medium,
                                      fontSize: MyStyles.H6,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  aspectRatio: (6 / 2.5),
                  autoPlay: true,
                  autoPlayCurve: Curves.easeInOut,
                  autoPlayInterval: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: true,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  disableCenter: true,
                  onPageChanged: (index, _) {
                    controller.carouselChanged(index);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => AnimatedSmoothIndicator(
                  activeIndex: controller.carouselController.value,
                  count: MyStrings.listCarouselTittle.length,
                  effect: ExpandingDotsEffect(
                    dotColor: MyColors.blueAccent50,
                    activeDotColor: MyColors.blueAccent,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
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
              HPListKategoriWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Most popular",
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
                        onTap: () {
                          Get.toNamed(AppPages.INITIAL_MP);
                        },
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
                        MyStrings.listDataMovie.length,
                        (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Tooltip(
                              message: MyStrings.listDataMovie[index]["tittle"],
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(AppPages.INITIAL_MD, arguments: [
                                    {
                                      "id": MyStrings.listDataMovie[index]
                                          ["id"],
                                    }
                                  ]);
                                },
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
                                            MyStrings.listDataMovie[index]
                                                    ["image"]
                                                .toString(),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            MyStrings.listDataMovie[index]
                                                    ["tittle"]
                                                .toString(),
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
                                            MyStrings.listDataMovie[index]
                                                    ["genre"]
                                                .toString(),
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
