import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LGNCustomButtonWidget extends StatelessWidget {
  const LGNCustomButtonWidget({
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
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Get.width),
            ),
          ),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(69, 69),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
