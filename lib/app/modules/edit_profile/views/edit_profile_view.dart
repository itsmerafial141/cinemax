import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/icons.dart';
import 'package:cinemax/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
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
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Text(
                        "Edit Profile",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
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
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColors.soft,
                          ),
                          child: Image(
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
                height: 15,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width),
                      color: MyColors.blueAccent,
                      image: DecorationImage(
                        image: AssetImage("assets/images/castcrew.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width),
                      color: MyColors.soft,
                    ),
                    child: Icon(
                      Icons.edit_rounded,
                      color: MyColors.blueAccent,
                      size: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Rafi Fitra Alamsyah",
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
              Text(
                "rfitraalamsyah@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Medium,
                  fontSize: MyStyles.H5,
                  color: MyColors.grey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => EPRCustomTextFieldWidget(
                    inputType: TextInputType.name,
                    textConrtoller: controller.fullnameController,
                    label: "Full Name",
                    hint: "Your name here...",
                    errorText: "Please enter first name and last name",
                    errorCondition: controller.fullnameError.isTrue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => EPRCustomTextFieldWidget(
                    inputType: TextInputType.emailAddress,
                    textConrtoller: controller.emailController,
                    label: "Email",
                    hint: "Your email here...",
                    errorText: "Email doesn't match, try example@gmail.com",
                    errorCondition: controller.emailError.isTrue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => EPRCustomPasswordTextFieldWidget(
                    inputType: TextInputType.visiblePassword,
                    textConrtoller: controller.passwordController,
                    label: "Password",
                    hint: "Your password here...",
                    errorText: "",
                    errorCondition: controller.passwordError.isTrue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => EPRCustomTextFieldWidget(
                    inputType: TextInputType.number,
                    textConrtoller: controller.phoneController,
                    label: "Phone Number",
                    hint: "Your phone number here...",
                    errorText: "Phone number must be more then 11 digit",
                    errorCondition: controller.phoneError.isTrue,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Tooltip(
                message: "Save Profile",
                child: ElevatedButton(
                  onPressed: () {
                    controller.editProfile();
                    // print(controller.passwordIsValidate(
                    //     controller.fullnameController.text));
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
                    "Save Changes",
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

class EPRCustomTextFieldWidget extends GetView<EditProfileController> {
  const EPRCustomTextFieldWidget({
    Key? key,
    required this.label,
    required this.hint,
    required this.textConrtoller,
    required this.errorText,
    required this.errorCondition,
    required this.inputType,
  }) : super(key: key);

  final TextInputType inputType;
  final String label;
  final String hint;
  final TextEditingController textConrtoller;
  final String errorText;
  final bool errorCondition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextField(
            controller: textConrtoller,
            keyboardType: inputType,
            cursorColor: errorCondition ? MyColors.red : MyColors.white,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: MyColors.grey),
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              errorText: errorCondition ? "* ${errorText.toString()}" : null,
              errorStyle: TextStyle(
                fontFamily: MyStyles.Medium,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              hintText: hint,
              hintStyle: TextStyle(color: MyColors.grey50),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.grey,
                ),
                borderRadius: BorderRadius.circular(Get.width),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.soft,
                ),
                borderRadius: BorderRadius.circular(Get.width),
              ),
            ),
          ),
        ),
        Positioned(
          left: 12,
          top: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            color: MyColors.dark,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: MyStyles.Medium,
                fontSize: MyStyles.H6,
                color: MyColors.whiteGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EPRCustomPasswordTextFieldWidget extends GetView<EditProfileController> {
  const EPRCustomPasswordTextFieldWidget({
    Key? key,
    required this.label,
    required this.hint,
    required this.textConrtoller,
    required this.errorText,
    required this.errorCondition,
    required this.inputType,
  }) : super(key: key);

  final TextInputType inputType;
  final String label;
  final String hint;
  final TextEditingController textConrtoller;
  final String errorText;
  final bool errorCondition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextField(
            keyboardType: inputType,
            controller: textConrtoller,
            obscureText: true,
            cursorColor: errorCondition ? MyColors.red : MyColors.white,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: MyColors.grey),
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              errorText: errorCondition
                  ? "* Password must start with a capital letter\n* Password must be more than 6 letters\n* Password cannot contain spaces\n* Password must be filled"
                  : null,
              errorStyle: TextStyle(
                fontFamily: MyStyles.Medium,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              hintText: hint,
              hintStyle: TextStyle(color: MyColors.grey50),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.grey,
                ),
                borderRadius: BorderRadius.circular(Get.width),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.soft,
                ),
                borderRadius: BorderRadius.circular(Get.width),
              ),
            ),
          ),
        ),
        Positioned(
          left: 12,
          top: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            color: MyColors.dark,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: MyStyles.Medium,
                fontSize: MyStyles.H6,
                color: MyColors.whiteGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
