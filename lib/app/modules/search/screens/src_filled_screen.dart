import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../../home/widgets/hp_list_kategori_widget.dart';
import '../widgets/src_movie_detail_card_screen.dart';

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
        SRCMovieDetailCardWidget(index: 0),
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
