import 'package:cinemax/app/modules/new_password/controllers/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class NPSCustomPassTextFieldWidget extends GetView<NewPasswordController> {
  const NPSCustomPassTextFieldWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.textController,
    required this.focusNode,
    required this.onSuffixTap,
    required this.visible,
    required this.fieldNode,
    required this.error,
  }) : super(key: key);

  final String label;
  final String hintText;
  final TextEditingController textController;
  final FocusNode focusNode;
  final Function() onSuffixTap;
  final bool visible;
  final bool fieldNode;
  final bool error;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child:
              // Obx(
              //   () =>
              TextField(
            focusNode: focusNode,
            controller: textController,
            cursorColor:
                // controller.passwordError.isTrue
                error ? MyColors.red : MyColors.white,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: MyColors.grey),
            obscureText: visible ? false : true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width),
                borderSide: BorderSide(width: 1, color: MyColors.red),
              ),
              errorText:
                  // controller.passwordError.isTrue
                  error ? "* Password isn't same" : null,
              errorStyle: TextStyle(
                fontFamily: MyStyles.Medium,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              suffixIconColor: MyColors.grey,
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: InkWell(
                  onTap: onSuffixTap,
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Icon(
                    // controller.visiblePassword.isTrue
                    visible
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                    color:
                        // controller.fieldNode.isTrue
                        fieldNode ? MyColors.grey : MyColors.grey50,
                  ),
                ),
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
        // ),
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
