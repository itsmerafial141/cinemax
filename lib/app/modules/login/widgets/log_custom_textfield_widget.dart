import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class LOGCustomTextFieldWidget extends StatelessWidget {
  const LOGCustomTextFieldWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final String label;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextField(
            controller: controller,
            cursorColor: MyColors.white,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: MyColors.grey),
            decoration: InputDecoration(
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
