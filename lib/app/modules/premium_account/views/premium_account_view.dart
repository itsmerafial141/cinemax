import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/premium_account_controller.dart';

class PremiumAccountView extends GetView<PremiumAccountController> {
  @override
  Widget build(BuildContext context) {
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
                        "VIP",
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width),
                      color: MyColors.orange,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Access Premium",
                      style: TextStyle(
                        fontFamily: MyStyles.Medium,
                        fontSize: MyStyles.H4,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width * 0.5,
                child: Text(
                  "The latest movies and series are here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: MyStyles.SemiBold,
                      fontSize: MyStyles.H3,
                      color: MyColors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: MyColors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Monthly Subscription",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: MyStyles.SemiBold,
                                fontSize: MyStyles.H4,
                                color: MyColors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontFamily: MyStyles.Medium,
                                  fontSize: MyStyles.H6,
                                ),
                                children: [
                                  TextSpan(text: "Rp"),
                                  TextSpan(
                                    text: "54.000",
                                    style: TextStyle(
                                      fontFamily: MyStyles.SemiBold,
                                      fontSize: MyStyles.H3,
                                    ),
                                  ),
                                  TextSpan(text: "/Mounth"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: MyColors.soft,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Annual Subscription",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: MyStyles.SemiBold,
                                fontSize: MyStyles.H4,
                                color: MyColors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontFamily: MyStyles.Medium,
                                  fontSize: MyStyles.H6,
                                ),
                                children: [
                                  TextSpan(text: "Rp"),
                                  TextSpan(
                                    text: "200.000",
                                    style: TextStyle(
                                      fontFamily: MyStyles.SemiBold,
                                      fontSize: MyStyles.H3,
                                    ),
                                  ),
                                  TextSpan(text: "/Years"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                  children: List.generate(
                    MyStrings.listFitureTittle.length,
                    (index) {
                      return PRAPremiumFitureWidget(index: index);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Tooltip(
                message: "Continue",
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppPages.INITIAL_PM);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      MyColors.blueAccent,
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(Get.width * 0.9, 56),
                    ),
                  ),
                  child: Text(
                    "Payment Method",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H4,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Resend code",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: MyStyles.H4,
                          fontFamily: MyStyles.Medium,
                          color: MyColors.grey,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: "Already subscribed? "),
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                              fontSize: MyStyles.H4,
                              fontFamily: MyStyles.Medium,
                              color: MyColors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PRAPremiumFitureWidget extends StatelessWidget {
  const PRAPremiumFitureWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            MyStrings.listFitureIcon[index],
            color: MyColors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: Get.width * 0.3,
            child: Text(
              MyStrings.listFitureTittle[index],
              style: TextStyle(
                fontFamily: MyStyles.Medium,
                fontSize: MyStyles.H6,
                color: MyColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
