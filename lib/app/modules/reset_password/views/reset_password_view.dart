import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/reset_password_controller.dart';
import '../widgets/rst_custom_textfield_widget.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
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
                "Reset Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H1,
                  color: MyColors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recover your account password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H5,
                  color: MyColors.grey50,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: RSTCustomTextFieldWidget(
                  label: "Email Address",
                  hintText: "example@gmail.com",
                  textController: controller.emailController,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Submit",
                child: ElevatedButton(
                  onPressed: () {
                    controller.resetPassword();
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
                    "Next",
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
        ),
      ),
    );
  }
}
