// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:cinemax/app/modules/most_popular_movie/controllers/most_popular_movie_controller.dart';
import 'package:cinemax/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class MPMMovieDetailCardWidget extends GetView<MostPopularMovieController> {
  const MPMMovieDetailCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Tooltip(
        message: MyStrings.listDataMovie[index]["tittle"],
        child: InkWell(
          onTap: () {
            Get.toNamed(AppPages.INITIAL_MD, arguments: [
              {
                "id": MyStrings.listDataMovie[index]["id"],
              }
            ]);
          },
          borderRadius: BorderRadius.circular(8),
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
                          MyStrings.listDataMovie[index]["image"].toString(),
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
                            MyStrings.listDataMovie[index]["rate"].toString(),
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
                      color:
                          MyStrings.listDataMovie[index]["access_id"] == "ACC0"
                              ? MyColors.orange
                              : MyColors.blueAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      MyStrings.listAcess[MyStrings.listAcess
                              .map((e) => e["id"])
                              .toList()
                              .indexOf(
                                MyStrings.listDataMovie[index]["access_id"],
                              )]["access"]
                          .toString(),
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
                    width: Get.width * 0.5,
                    child: Text(
                      MyStrings.listDataMovie[index]["tittle"].toString(),
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
                        MyStrings.listDataMovie[index]["duration"].toString(),
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
                        width: controller
                            .textSize(
                              "999999",
                              TextStyle(
                                fontFamily: MyStyles.Medium,
                                fontSize: MyStyles.H6,
                                color: MyColors.white,
                              ),
                            )
                            .width,
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
                          MyStrings.listRatingMovie[MyStrings.listRatingMovie
                                  .map((e) => e["id"])
                                  .toList()
                                  .indexOf(
                                    MyStrings.listDataMovie[index]["rating"],
                                  )]["name"]
                              .toString(),
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
                        MyStrings.listDataMovie[index]["genre"].toString(),
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
                        MyStrings.listDataMovie[index]["category"].toString(),
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
        ),
      ),
    );
  }
}
