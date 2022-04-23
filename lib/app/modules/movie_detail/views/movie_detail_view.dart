import 'dart:ui';

import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/movie_detail_controller.dart';
import '../widgets/mdt_custom_button_widget.dart';

class MovieDetailView extends GetView<MovieDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    MyStrings.listDataMovie
                        .where(
                          (element) => element["id"] == controller.id[0]["id"],
                        )
                        .toList()[0]["image"]
                        .toString(),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).viewPadding.top),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    transform: GradientRotation(1.5708),
                    colors: [
                      MyColors.soft50,
                      MyColors.dark,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
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
                          Spacer(),
                          Container(
                            width: Get.width * 0.5,
                            alignment: Alignment.center,
                            child: Text(
                              MyStrings.listDataMovie
                                  .where(
                                    (element) =>
                                        element["id"] == controller.id[0]["id"],
                                  )
                                  .toList()[0]["tittle"]
                                  .toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              textAlign: TextAlign.center,
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
                    Container(
                      height: Get.height * 0.4,
                      width: Get.width * 0.45,
                      decoration: BoxDecoration(
                        color: MyColors.soft,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            MyStrings.listDataMovie
                                .where(
                                  (element) =>
                                      element["id"] == controller.id[0]["id"],
                                )
                                .toList()[0]["image"]
                                .toString(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          size: 15,
                          color: MyColors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          MyStrings.listDataMovie
                              .where(
                                (element) =>
                                    element["id"] == controller.id[0]["id"],
                              )
                              .toList()[0]["release"]
                              .toString(),
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
                        Icon(
                          Icons.access_time_filled_rounded,
                          size: 15,
                          color: MyColors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          MyStrings.listDataMovie
                              .where(
                                (element) =>
                                    element["id"] == controller.id[0]["id"],
                              )
                              .toList()[0]["duration"]
                              .toString(),
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
                        Icon(
                          Icons.local_movies_rounded,
                          size: 15,
                          color: MyColors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          MyStrings.listDataMovie
                              .where(
                                (element) =>
                                    element["id"] == controller.id[0]["id"],
                              )
                              .toList()[0]["genre"]
                              .toString(),
                          style: TextStyle(
                            fontFamily: MyStyles.Medium,
                            fontSize: MyStyles.H6,
                            color: MyColors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: MyColors.soft,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: MyColors.orange,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            MyStrings.listDataMovie
                                .where(
                                  (element) =>
                                      element["id"] == controller.id[0]["id"],
                                )
                                .toList()[0]["rate"]
                                .toString(),
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tooltip(
                          message: "Streaming",
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(Get.width),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                color: MyStrings.listDataMovie
                                            .where(
                                              (element) =>
                                                  element["id"] ==
                                                  controller.id[0]["id"],
                                            )
                                            .toList()[0]["category"]
                                            .toString() ==
                                        "Movie"
                                    ? MyColors.orange
                                    : MyColors.blueAccent,
                                borderRadius: BorderRadius.circular(Get.width),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_arrow_rounded,
                                    size: 20,
                                    color: MyColors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    MyStrings.listDataMovie
                                                .where(
                                                  (element) =>
                                                      element["id"] ==
                                                      controller.id[0]["id"],
                                                )
                                                .toList()[0]["category"]
                                                .toString() ==
                                            "Movie"
                                        ? "Play"
                                        : "Trailer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: MyStyles.Medium,
                                      fontSize: MyStyles.H4,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Tooltip(
                          message: "Download",
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppPages.INITIAL_PA);
                            },
                            borderRadius: BorderRadius.circular(Get.width),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                color: MyColors.soft,
                              ),
                              child: Icon(
                                Icons.file_download_outlined,
                                color: MyStrings.listDataMovie
                                            .where(
                                              (element) =>
                                                  element["id"] ==
                                                  controller.id[0]["id"],
                                            )
                                            .toList()[0]["category"]
                                            .toString() ==
                                        "Movie"
                                    ? MyColors.orange
                                    : MyColors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Tooltip(
                          message: "Share",
                          child: InkWell(
                            onTap: () {
                              showShareDialog(context);
                            },
                            borderRadius: BorderRadius.circular(Get.width),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                color: MyColors.soft,
                              ),
                              child: Icon(
                                Icons.ios_share_rounded,
                                color: MyColors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
                "Story Line",
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: MyStyles.H5,
                    color: MyColors.whiteGrey,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: MyStrings.listDataMovie
                          .where(
                            (element) =>
                                element["id"] == controller.id[0]["id"],
                          )
                          .toList()[0]["storyline"]
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
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Cast and Crew",
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
            Container(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: List.generate(
                        MyStrings.listCastAndCrew
                            .where(
                              (element) =>
                                  element["id_movie"] == controller.id[0]["id"],
                            )
                            .toList()
                            .length,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Get.width),
                                    color: MyColors.blueAccent,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        controller
                                            .listDataPickerJoinById(
                                              MyStrings.listCastAndCrew,
                                              "id_movie",
                                              controller.id[0]["id"],
                                            )[index]["image"]
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      MyStrings.listCastAndCrew
                                          .where(
                                            (element) =>
                                                element["id_movie"] ==
                                                controller.id[0]["id"],
                                          )
                                          .toList()[index]["name"]
                                          .toString(),
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
                                      MyStrings.listCastAndCrew
                                          .where(
                                            (element) =>
                                                element["id_movie"] ==
                                                controller.id[0]["id"],
                                          )
                                          .toList()[index]["position"]
                                          .toString(),
                                      style: TextStyle(
                                        fontFamily: MyStyles.Medium,
                                        fontSize: MyStyles.H7,
                                        color: MyColors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
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
            ),
            SizedBox(
              height: 20,
            ),
            MyStrings.listDataMovie
                        .where(
                          (element) => element["id"] == controller.id[0]["id"],
                        )
                        .toList()[0]["category"]
                        .toString() ==
                    "Serial"
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Episode",
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {
                                  showSeasonsDialog(context);
                                  print(
                                    controller.listDataPickerJoinById(
                                      MyStrings.listSessionsMovie,
                                      "id",
                                      "SSMV30",
                                    )[0]["name"],
                                  );
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Obx(
                                  () => Text(
                                    controller
                                        .listDataPickerJoinById(
                                          MyStrings.listSessionsMovie,
                                          "id",
                                          controller.idSeason.value,
                                        )[0]["name"]
                                        .toString(),
                                    style: TextStyle(
                                      fontFamily: MyStyles.Medium,
                                      fontSize: MyStyles.H5,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    controller.seassonDropDown.toggle();
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Icon(
                                    controller.seassonDropDown.value == true
                                        ? Icons.keyboard_arrow_down_rounded
                                        : Icons.keyboard_arrow_up_rounded,
                                    color: MyColors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Obx(
                        () => controller.seassonDropDown.isTrue
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    return InkWell(
                                      onTap: () {
                                        Get.toNamed(AppPages.INITIAL_PA);
                                      },
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: MyColors.soft,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Container(
                                                        width: 121,
                                                        height: 83,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          color: MyColors.grey,
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              controller
                                                                  .listDataPickerJoinById(
                                                                    MyStrings
                                                                        .listEpisodeMovie,
                                                                    "id_session",
                                                                    controller
                                                                        .idSeason
                                                                        .value,
                                                                  )[index]
                                                                      ["image"]
                                                                  .toString(),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 121,
                                                        height: 83,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          color: Colors.black54,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white24,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            Get.width,
                                                          ),
                                                        ),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Colors.white24,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              Get.width,
                                                            ),
                                                          ),
                                                          child: Icon(
                                                            Icons
                                                                .play_arrow_rounded,
                                                            color:
                                                                MyColors.white,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 10,
                                                          vertical: 5,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              MyColors.orange,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Text(
                                                          "Premium",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                MyStyles.Medium,
                                                            fontSize:
                                                                MyStyles.H7,
                                                            color:
                                                                MyColors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        controller
                                                            .listDataPickerJoinById(
                                                              MyStrings
                                                                  .listEpisodeMovie,
                                                              "id_session",
                                                              controller
                                                                  .idSeason
                                                                  .value,
                                                            )[index]["duration"]
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              MyStyles.Medium,
                                                          fontSize: MyStyles.H6,
                                                          color: MyColors.grey,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "Episode ${index + 1}",
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              MyStyles.SemiBold,
                                                          fontSize: MyStyles.H5,
                                                          color: MyColors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              controller
                                                  .listDataPickerJoinById(
                                                    MyStrings.listEpisodeMovie,
                                                    "id_session",
                                                    controller.idSeason.value,
                                                  )[index]["tittle"]
                                                  .toString(),
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontFamily: MyStyles.Medium,
                                                fontSize: MyStyles.H4,
                                                color: MyColors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              controller
                                                  .listDataPickerJoinById(
                                                    MyStrings.listEpisodeMovie,
                                                    "id_session",
                                                    controller.idSeason.value,
                                                  )[index]["synopsis"]
                                                  .toString(),
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                height: 1.5,
                                                fontFamily: MyStyles.Regular,
                                                fontSize: MyStyles.H5,
                                                color: MyColors.whiteGrey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (_, __) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: controller
                                      .listDataPickerJoinById(
                                        MyStrings.listEpisodeMovie,
                                        "id_session",
                                        controller.idSeason.value,
                                      )
                                      .length,
                                ),
                              )
                            : Container(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showShareDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Dialog(
            backgroundColor: MyColors.soft,
            insetAnimationCurve: Curves.easeInOut,
            insetAnimationDuration: Duration(milliseconds: 500),
            insetPadding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide.none,
            ),
            child: Wrap(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        alignment: Alignment.centerRight,
                        child: Tooltip(
                          message: "Close",
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColors.dark,
                              ),
                              child: Icon(
                                Icons.close_rounded,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Share to",
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H3,
                          color: MyColors.white,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          MyStrings.shareListImageButton.length,
                          (index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: MDTCustomButtonWidget(
                                onPressed: () {},
                                color:
                                    MyColors.shareListImageButtonColor[index],
                                image: MyStrings.shareListImageButton[index],
                                message:
                                    MyStrings.shareListToolTipMessage[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  showSeasonsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Dialog(
            backgroundColor: MyColors.soft,
            insetAnimationCurve: Curves.easeInOut,
            insetAnimationDuration: Duration(milliseconds: 500),
            insetPadding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide.none,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: List.generate(
                      controller
                          .listDataPickerJoinById(
                            MyStrings.listSessionsMovie,
                            "id_movie",
                            controller.id[0]["id"],
                          )
                          .length,
                      (index) {
                        return InkWell(
                          onTap: () {
                            Get.back();
                            controller.idSeason.value = controller
                                .listDataPickerJoinById(
                                  MyStrings.listSessionsMovie,
                                  "id_movie",
                                  controller.id[0]["id"],
                                )[index]["id"]
                                .toString();
                          },
                          borderRadius: BorderRadius.circular(Get.width),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              controller
                                  .listDataPickerJoinById(
                                    MyStrings.listSessionsMovie,
                                    "id_movie",
                                    controller.id[0]["id"],
                                  )[index]["name"]
                                  .toString(),
                              style: TextStyle(
                                fontFamily: MyStyles.SemiBold,
                                fontSize: MyStyles.H2,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
