import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MDTCustomButtonWidget extends StatelessWidget {
  const MDTCustomButtonWidget({
    Key? key,
    required this.color,
    required this.image,
    required this.onPressed,
    required this.message,
  }) : super(key: key);

  final Color color;
  final String image;
  final String message;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(Get.width),
        child: Container(
          height: Get.width * 0.15,
          width: Get.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.width),
            color: color,
          ),
          child: Image(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
