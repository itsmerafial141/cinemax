import 'package:cinemax/app/modules/new_password/widgets/nps_custom_textfield_widget.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
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
                "Create new password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.SemiBold,
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
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(() => NPSCustomPassTextFieldWidget(
                      label: "New Password",
                      hintText: "NewPassword1234",
                      textController: controller.newPasswordController,
                      fieldNode: controller.fieldNewPasswordNode.isTrue,
                      visible: controller.visibleNewPassword.isTrue,
                      focusNode: controller.focusNewPasswordNode,
                      error: controller.passwordError.isTrue,
                      onSuffixTap: () {
                        controller.visibleNewPassword.toggle();
                      },
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(() => NPSCustomPassTextFieldWidget(
                      label: "Confirm Password",
                      hintText: "NewPassword1234",
                      textController: controller.confirmPasswordController,
                      fieldNode: controller.fieldConfirmPasswordNode.isTrue,
                      visible: controller.visibleConfirmPassword.isTrue,
                      focusNode: controller.focusConfirmPasswordNode,
                      error: controller.passwordError.isTrue,
                      onSuffixTap: () {
                        controller.visibleConfirmPassword.toggle();
                      },
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Submit",
                child: ElevatedButton(
                  onPressed: () {
                    controller.resetingPassword();
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
