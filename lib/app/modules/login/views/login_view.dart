import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/icons.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../widgets/log_custom_passfield_widget.dart';
import '../widgets/log_custom_textfield_widget.dart';

class LoginView extends GetView<LoginController> {
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
                        "Login",
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
                height: 40,
              ),
              Text(
                "Hi, Tiffany",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.SemiBold,
                  fontSize: MyStyles.H2,
                  color: MyColors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back! Please enter\nyour details.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H6,
                  color: MyColors.whiteGrey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LOGCustomTextFieldWidget(
                  label: "Email Address",
                  hintText: "example@gmail.com",
                  controller: controller.emailController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LOGCustomPassFieldWidget(
                  onTap: () {
                    controller.visiblePassword.toggle();
                  },
                  label: "Password",
                  hintText: "Password1234",
                  controllers: controller.passwordController,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerRight,
                child: Tooltip(
                  message: "Forgot Password",
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.INITIAL_RP);
                    },
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.Medium,
                          fontSize: MyStyles.H6,
                          color: MyColors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Tooltip(
                message: "Login",
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(AppPages.INITIAL_HM);
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
                    "Login",
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
