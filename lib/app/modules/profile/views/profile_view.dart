import 'dart:ui';

import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
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
                width: Get.width,
                alignment: Alignment.center,
                child: Text(
                  "Profile",
                  textAlign: TextAlign.center,
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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: MyColors.soft,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width),
                        color: MyColors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: Get.width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rafial",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: MyStyles.SemiBold,
                                fontSize: MyStyles.H4,
                                color: MyColors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "rfitraalamsyah@gmail.com",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: MyStyles.Medium,
                                fontSize: MyStyles.H5,
                                color: MyColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Tooltip(
                          message: "Edit Profile",
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppPages.INITIAL_EP);
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: MyColors.blueAccent,
                                ),
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 15,
                                color: MyColors.blueAccent,
                              ),
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppPages.INITIAL_PA);
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColors.orange,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 159, 51, 1),
                            ),
                            child: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage(MyIcons.premium),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Premium Member",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: MyStyles.SemiBold,
                                  fontSize: MyStyles.H4,
                                  color: MyColors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                // width: Get.width * 0.65,
                                child: Text(
                                  "New movies are coming for you, Download Now!",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: MyStyles.H5,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PRFListOptionMenuWidget(
                tittle: "Account",
                listItemImage: MyStrings.listSubMenuProfileAccountImage,
                listItemTittle: MyStrings.listSubMenuProfileAccountTittle,
                isFirstIconFileldColor: true,
              ),
              SizedBox(
                height: 20,
              ),
              PRFListOptionMenuWidget(
                tittle: "General",
                listItemImage: MyStrings.listSubMenuProfileGeneralImage,
                listItemTittle: MyStrings.listSubMenuProfileGeneraltTittle,
                isFirstIconFileldColor: false,
              ),
              SizedBox(
                height: 20,
              ),
              PRFListOptionMenuWidget(
                tittle: "More",
                listItemImage: MyStrings.listSubMenuProfileMoreImage,
                listItemTittle: MyStrings.listSubMenuProfileMoreTittle,
                isFirstIconFileldColor: false,
              ),
              SizedBox(
                height: 20,
              ),
              Tooltip(
                message: "Log Out",
                child: ElevatedButton(
                  onPressed: () {
                    showLogoutDialog(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      MyColors.dark,
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width),
                        side: BorderSide(
                          width: 1,
                          color: MyColors.blueAccent,
                        ),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * 0.9, 56),
                    ),
                  ),
                  child: Text(
                    "Log Out",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H4,
                      color: MyColors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showLogoutDialog(BuildContext context) {
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/icons/Question.png",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Are you Sure ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.SemiBold,
                          fontSize: MyStyles.H3,
                          color: MyColors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ullamcorper imperdiet urna id non sed est sem. Rhoncus amet, enim purus gravida donec aliquet.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: MyStyles.H6,
                          color: MyColors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.offAllNamed(AppPages.INITIAL_LG);
                              },
                              borderRadius: BorderRadius.circular(Get.width),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  border: Border.all(
                                    width: 1,
                                    color: MyColors.blueAccent,
                                  ),
                                ),
                                child: Text(
                                  "Log Out",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: MyStyles.H4,
                                    color: MyColors.blueAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              borderRadius: BorderRadius.circular(Get.width),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  color: MyColors.blueAccent,
                                  border: Border.all(
                                    width: 1,
                                    color: MyColors.blueAccent,
                                  ),
                                ),
                                child: Text(
                                  "Cancel",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: MyStyles.H4,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
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

class PRFListOptionMenuWidget extends StatelessWidget {
  const PRFListOptionMenuWidget({
    Key? key,
    required this.listItemTittle,
    required this.listItemImage,
    required this.tittle,
    required this.isFirstIconFileldColor,
  }) : super(key: key);
  final String tittle;
  final List listItemTittle;
  final List listItemImage;
  final bool isFirstIconFileldColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: MyColors.soft,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: MyStyles.SemiBold,
              fontSize: MyStyles.H3,
              color: MyColors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return Tooltip(
                message: listItemTittle[index],
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Get.width),
                            color: MyColors.soft,
                          ),
                          child: isFirstIconFileldColor == true
                              ? Image(
                                  height: 20,
                                  width: 20,
                                  color: index == 0
                                      ? MyColors.blueAccent
                                      : MyColors.grey,
                                  image: AssetImage(
                                    listItemImage[index],
                                  ),
                                )
                              : Image(
                                  height: 20,
                                  width: 20,
                                  color: MyColors.grey,
                                  image: AssetImage(
                                    listItemImage[index],
                                  ),
                                ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          listItemTittle[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.Medium,
                            fontSize: MyStyles.H5,
                            color: MyColors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: MyColors.blueAccent,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) {
              return Container(
                height: 1,
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
                color: MyColors.soft,
              );
            },
            itemCount: listItemTittle.length,
          ),
        ],
      ),
    );
  }
}
