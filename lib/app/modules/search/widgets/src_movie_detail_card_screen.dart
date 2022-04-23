// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:cinemax/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCMovieDetailCardWidget extends StatelessWidget {
  const SRCMovieDetailCardWidget({
    Key? key,
    required this.index,
    required this.data,
  }) : super(key: key);

  final int index;
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Tooltip(
        message: data[index]["tittle"],
        child: InkWell(
          onTap: () {
            Get.toNamed(AppPages.INITIAL_MD, arguments: [
              {
                "id": data[index]["id"],
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
                          data[index]["image"].toString(),
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
                            data[index]["rate"].toString(),
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
                      MyStrings.listAcess
                          .where((element) =>
                              element["id"] ==
                              data[index]["access_id"].toString())
                          .toList()[0]["access"]
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
                      data[index]["tittle"].toString(),
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
                        data[index]["release"].toString(),
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
                        data[index]["duration"].toString(),
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
                          MyStrings.listRatingMovie
                              .where((element) =>
                                  element["id"] == data[index]["rating"])
                              .toList()[0]["name"]
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
                        data[index]["genre"].toString(),
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
                        data[index]["category"].toString(),
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
