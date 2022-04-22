import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/download_controller.dart';

class DownloadView extends GetView<DownloadController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DownloadController());
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 32,
                width: Get.width,
                margin: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Text(
                        "Download",
                        textAlign: TextAlign.center,
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
                          Get.offAllNamed(AppPages.INITIAL_NV);
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return Tooltip(
                      message: MyStrings.listMostPopularTittle[index],
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppPages.INITIAL_MD, arguments: [
                            {
                              "id": MyStrings.listDataMovie[index]["id"],
                            }
                          ]);
                        },
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColors.soft,
                          ),
                          child: Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 83,
                                    width: 121,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: MyColors.grey,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          MyStrings.listMostPopularImage[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                  index == 0
                                      ? Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              height: 83,
                                              width: 121,
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: Colors.black87,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            Obx(
                                              () =>
                                                  CircularStepProgressIndicator(
                                                totalSteps: 100,
                                                currentStep: controller
                                                    .downloadProgress.value,
                                                stepSize: 10,
                                                width: 60,
                                                height: 60,
                                                padding: 0,
                                                selectedStepSize: 5,
                                                unselectedStepSize: 5,
                                                roundedCap: (_, __) => true,
                                                selectedColor: MyColors.grey,
                                                unselectedColor: MyColors.white,
                                              ),
                                            ),
                                            Obx(
                                              () => Tooltip(
                                                message: controller
                                                        .downloadPause.isTrue
                                                    ? "Start"
                                                    : "Stop",
                                                child: InkWell(
                                                  onTap: () {
                                                    controller.downloadPause
                                                        .toggle();
                                                    print(controller
                                                        .downloadPause.value);
                                                    controller
                                                        .resumneDownload();
                                                  },
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Get.width,
                                                  ),
                                                  child: Icon(
                                                    controller.downloadProgress
                                                                .value ==
                                                            100
                                                        ? Icons.refresh
                                                        : controller
                                                                .downloadPause
                                                                .isTrue
                                                            ? Icons
                                                                .play_arrow_rounded
                                                            : Icons
                                                                .stop_rounded,
                                                    color: MyColors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Container(),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: MyStyles.Medium,
                                      fontSize: MyStyles.H6,
                                      color: MyColors.whiteGrey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: Get.width * 0.4,
                                    child: Text(
                                      MyStrings.listMostPopularTittle[index],
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontFamily: MyStyles.SemiBold,
                                        fontSize: MyStyles.H5,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  index != 0
                                      ? Row(
                                          children: [
                                            Text(
                                              "Movie",
                                              style: TextStyle(
                                                fontFamily: MyStyles.Medium,
                                                fontSize: MyStyles.H6,
                                                color: MyColors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 10,
                                              width: 1,
                                              color: MyColors.grey,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "1.78 GB",
                                              style: TextStyle(
                                                fontFamily: MyStyles.Medium,
                                                fontSize: MyStyles.H6,
                                                color: MyColors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Icon(
                                              Icons.file_download_outlined,
                                              color: MyColors.grey,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Obx(
                                              () => Row(
                                                children: [
                                                  Container(
                                                    width: 18,
                                                    child: Text(
                                                      (1.78 *
                                                                  ((100 -
                                                                          controller
                                                                              .downloadProgress
                                                                              .value) /
                                                                      100))
                                                              .toString()[0] +
                                                          (1.78 *
                                                                  ((100 -
                                                                          controller
                                                                              .downloadProgress
                                                                              .value) /
                                                                      100))
                                                              .toString()[1] +
                                                          (1.78 *
                                                                  ((100 -
                                                                          controller
                                                                              .downloadProgress
                                                                              .value) /
                                                                      100))
                                                              .toString()[2],
                                                      overflow:
                                                          TextOverflow.clip,
                                                      softWrap: false,
                                                      style: TextStyle(
                                                        fontFamily:
                                                            MyStyles.Medium,
                                                        fontSize: MyStyles.H6,
                                                        color: MyColors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " of 1.78GB | ${(100 - controller.downloadProgress.value)}%",
                                                    style: TextStyle(
                                                      fontFamily:
                                                          MyStyles.Medium,
                                                      fontSize: MyStyles.H6,
                                                      color: MyColors.grey,
                                                    ),
                                                  ),
                                                ],
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
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: MyStrings.listMostPopularImage.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
