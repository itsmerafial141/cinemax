import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../../login/widgets/log_custom_textfield_widget.dart';
import '../controllers/signup_controller.dart';
import '../widgets/sgn_custom_passfield_widget.dart';

class SignupView extends GetView<SignupController> {
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
                        "Sign Up",
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
                "Let’s get started",
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
                "The latest movies and series\nare here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H6,
                  color: MyColors.whiteGrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LOGCustomTextFieldWidget(
                  label: "Full Name",
                  hintText: "Your name here...",
                  controller: controller.fullnameController,
                ),
              ),
              SizedBox(
                height: 20,
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
                child: SGNCustomPassFieldWidget(
                  onTap: () {
                    controller.visiblePassword.toggle();
                  },
                  label: "Password",
                  hintText: "Example1234",
                  controllers: controller.passwordController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Tooltip(
                      message: "Aggree Rules",
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: MyColors.grey,
                          ),
                        ),
                        child: Obx(
                          () => Checkbox(
                            value: controller.agreePolice.value,
                            onChanged: (value) {
                              controller.agreePolice.toggle();
                            },
                            side: BorderSide(width: 0),
                            checkColor: MyColors.dark,
                            fillColor: MaterialStateProperty.all<Color>(
                              MyColors.blueAccent,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            splashRadius: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: Get.width * 0.75,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppPages.INITIAL_PP);
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: MyStyles.H6,
                              fontFamily: MyStyles.Medium,
                              color: MyColors.grey,
                            ),
                            children: [
                              TextSpan(text: "I agree to the "),
                              TextSpan(
                                text: "Terms and Services",
                                style: TextStyle(
                                  fontSize: MyStyles.H6,
                                  fontFamily: MyStyles.Medium,
                                  color: MyColors.blueAccent,
                                ),
                              ),
                              TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                  fontSize: MyStyles.H6,
                                  fontFamily: MyStyles.Medium,
                                  color: MyColors.blueAccent,
                                ),
                              ),
                            ],
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
              Tooltip(
                message: "Sign Up",
                child: ElevatedButton(
                  onPressed: () {},
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
                    "Sign Up",
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
