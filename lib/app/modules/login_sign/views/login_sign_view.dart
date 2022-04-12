import 'package:cinemax/app/routes/app_pages.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/icons.dart';
import '../../../values/styles.dart';
import '../controllers/login_sign_controller.dart';
import '../widgets/lgn_custom_button_widget.dart';

class LoginSignView extends GetView<LoginSignController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginSignController());
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(MyIcons.logo),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "CINEMAX",
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
              "Enter your registered\nPhone Number to Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: MyStyles.SemiBold,
                fontSize: MyStyles.H5,
                color: MyColors.grey,
              ),
            ),
            SizedBox(
              height: 60,
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
                    fontFamily: MyStyles.SemiBold,
                    fontSize: MyStyles.H4,
                    color: MyColors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I already have an account? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: MyStyles.H4,
                    color: MyColors.grey,
                  ),
                ),
                Tooltip(
                  message: "Login",
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.INITIAL_LG);
                    },
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.SemiBold,
                        fontSize: MyStyles.H4,
                        color: MyColors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: Get.width * 0.2,
                  color: MyColors.soft,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Or Sign up with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: MyStyles.H5,
                    color: MyColors.grey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 1,
                  width: Get.width * 0.2,
                  color: MyColors.soft,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(
                MyStrings.loginSignListImageButton.length,
                (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: LGNCustomButtonWidget(
                      onPressed: () {},
                      color: MyColors.loginSignListImageButtonColor[index],
                      image: MyStrings.loginSignListImageButton[index],
                      message: MyStrings.loginSignListToolTipMessage[index],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
