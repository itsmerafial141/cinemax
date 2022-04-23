import 'package:cinemax/app/modules/upcoming_movie/widgets/um_list_kategori_widget.dart';
import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/icons.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/upcoming_movie_controller.dart';

class UpcomingMovieView extends GetView<UpcomingMovieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Text(
                        "Upcoming Movie",
                        textAlign: TextAlign.center,
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
                    Tooltip(
                      message: "Back",
                      child: InkWell(
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              UMListKategoriWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(
                          AppPages.INITIAL_TR,
                          arguments: [
                            {
                              "id": MyStrings.listUpcomingMovies[index]["id"],
                            }
                          ],
                        );
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: Get.width * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColors.soft,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  MyStrings.listUpcomingMovies[index]
                                          ["thumbnail"]
                                      .toString(),
                                ),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: MyColors.soft50,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Get.width),
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            MyStrings.listUpcomingMovies[index]["tittle"]
                                .toString(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: MyStyles.SemiBold,
                              fontSize: MyStyles.H4,
                              color: MyColors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
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
                                MyStrings.listUpcomingMovies[index]["release"]
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
                                MyStrings.listUpcomingMovies[index]["genre"]
                                    .toString(),
                                textAlign: TextAlign.start,
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
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: MyStrings.listUpcomingMovies.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
