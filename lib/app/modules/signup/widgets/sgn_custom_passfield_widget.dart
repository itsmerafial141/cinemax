import 'package:cinemax/app/modules/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class SGNCustomPassFieldWidget extends GetView<SignupController> {
  const SGNCustomPassFieldWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controllers,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final String hintText;
  final TextEditingController controllers;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Obx(
            () => TextField(
              focusNode: controller.focusNode,
              controller: controllers,
              cursorColor: MyColors.white,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(color: MyColors.grey),
              obscureText: controller.visiblePassword.isTrue ? true : false,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                // suffixIconConstraints:
                //     BoxConstraints(minWidth: 40, minHeight: 40),
                suffixIconColor: MyColors.grey,
                suffixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(
                    end: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Icon(
                      controller.visiblePassword.isTrue
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      color: controller.fieldNode.isTrue
                          ? MyColors.grey
                          : MyColors.grey50,
                    ),
                  ),
                ),
                focusColor: MyColors.grey,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: hintText,
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
