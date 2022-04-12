// ignore_for_file: deprecated_member_use

import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Tooltip(
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
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Verifying your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H1,
                  color: MyColors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: MyStyles.Medium,
                      fontSize: MyStyles.H5,
                      color: MyColors.grey50,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "We have just sent you 4 digit code via your\nemail ",
                      ),
                      TextSpan(
                        text: "example@gmail.com",
                        style: TextStyle(
                          fontSize: MyStyles.H5,
                          fontFamily: MyStyles.Medium,
                          color: MyColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 64,
                        width: 64,
                        child: Obx(
                          () => TextField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            maxLengthEnforced: true,
                            textCapitalization: TextCapitalization.characters,
                            controller: controller.listEditingController[index],
                            cursorColor: controller.codeError.isTrue
                                ? MyColors.red
                                : MyColors.white,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: MyColors.grey),
                            onSubmitted: (_) {
                              controller.listCodeSubmitted[index] = true;
                            },
                            decoration: InputDecoration(
                              counterText: "",
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 1, color: MyColors.red),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 1, color: MyColors.red),
                              ),
                              errorText: controller.codeError.isTrue
                                  ? "* Code isn't correct, please try again."
                                  : null,
                              errorStyle: TextStyle(
                                fontFamily: MyStyles.Medium,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              hintText: "0",
                              hintStyle: TextStyle(color: MyColors.grey50),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: MyColors.grey,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: controller.listCodeSubmitted[index] ==
                                          true
                                      ? MyColors.blueAccent
                                      : MyColors.soft,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: MyColors.soft,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Continue",
                child: ElevatedButton(
                  onPressed: () {
                    controller.verifyCode();
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
                    "Continue",
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
                          TextSpan(text: "Didn't receive code? "),
                          TextSpan(
                            text: "Resend",
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
            ],
          ),
        ),
      ),
    );
  }
}
