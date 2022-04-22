import 'package:cinemax/app/values/colors.dart';
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
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: MyColors.soft,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/VISA.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "•••• •••• •••• 87652",
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Get.width),
                              color: MyColors.blueAccent,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
