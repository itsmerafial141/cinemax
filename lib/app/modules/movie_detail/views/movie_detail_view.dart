import 'dart:ui';

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
    var index = Get.arguments;
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    MyStrings.listMostPopularImage[index],
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
                              MyStrings.listMostPopularTittle[index],
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
                            MyStrings.listMostPopularImage[index],
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
                          "2021",
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
                          "148 Minutes",
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
                          "Action",
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
                                color: MyColors.orange,
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
                                    "Play",
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
                            onTap: () {},
                            borderRadius: BorderRadius.circular(Get.width),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Get.width),
                                color: MyColors.soft,
                              ),
                              child: Icon(
                                Icons.file_download_outlined,
                                color: MyColors.orange,
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
                      text:
                          "For the first time in the cinematic history of Spider-Man, our friendly neighborhood hero's identity is revealed, bringing his Super Hero responsibilities into conflict with his normal life and putting those he cares about most at risk.",
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: List.generate(
                      4,
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
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rafi Fitra Alamsyah",
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
                                    "Directors",
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
            SizedBox(
              height: Get.height * 0.3,
            ),
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
}
