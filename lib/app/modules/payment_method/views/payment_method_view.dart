import 'dart:ui';

import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
                              "Payment Method",
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
                            "Payment Confirm",
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
                      width: Get.width * 0.7,
                      child: Text(
                        "Enjoy the viewing experience after you confirm the payment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: MyStyles.SemiBold,
                            fontSize: MyStyles.H3,
                            color: MyColors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            children: List.generate(
                                MyStrings.listPaymentMethodNoRek.length,
                                (index) {
                              return PRMPaymentMethodWidget(
                                index: index,
                              );
                            }),
                          ),
                          // PRMPaymentMethodWidget(
                          //   image: MyStrings.listPaymentMethodImage[0],
                          //   noRek: MyStrings.listPaymentMethodNoRek[0],
                          //   index: controller.paymentIndex.value,
                          //   onTap: () {
                          //     controller.paymentIndex.value = 0;
                          //   },
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // PRMPaymentMethodWidget(
                          //   image: MyStrings.listPaymentMethodImage[1],
                          //   noRek: MyStrings.listPaymentMethodNoRek[1],
                          //   index: controller.paymentIndex.value,
                          //   onTap: () {
                          //     controller.paymentIndex.value = 1;
                          //   },
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColors.soft,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_rounded,
                                    color: MyColors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Add New",
                                    style: TextStyle(
                                      fontFamily: MyStyles.Medium,
                                      fontSize: MyStyles.H4,
                                      color: MyColors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Tooltip(
                message: "Purchese",
                child: ElevatedButton(
                  onPressed: () {
                    showPaymentDialog(context);
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
                    "Purchese Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H4,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showPaymentDialog(BuildContext context) {
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
              borderRadius: BorderRadius.circular(10),
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
                          "assets/icons/tick 1.png",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Your payment has completed!",
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
                        "Ullamcorper imperdiet urna id non sed est sem. Rhoncus amet, enim purus gravida donec aliquet. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: MyStyles.H5,
                          color: MyColors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Tooltip(
                        message: "Back",
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAllNamed(AppPages.INITIAL_NV);
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
                            "OK",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyStyles.Medium,
                              fontSize: MyStyles.H4,
                              color: MyColors.white,
                            ),
                          ),
                        ),
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

class PRMPaymentMethodWidget extends GetView<PaymentMethodController> {
  const PRMPaymentMethodWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: InkWell(
          onTap: () {
            controller.paymentIndex.value = index;
          },
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.soft,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    MyStrings.listPaymentMethodImage[index],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  MyStrings.listPaymentMethodNoRek[index],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H5,
                    color: MyColors.white,
                  ),
                ),
                Spacer(),
                Container(
                  height: 20,
                  width: 20,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width),
                    color: controller.paymentIndex.value == index
                        ? MyColors.blueAccent
                        : MyColors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width),
                      border: Border.all(
                        width: 2,
                        color: MyColors.soft,
                      ),
                      color: controller.paymentIndex.value == index
                          ? MyColors.blueAccent
                          : MyColors.soft,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
