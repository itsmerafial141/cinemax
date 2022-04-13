import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/download_controller.dart';

class DownloadView extends GetView<DownloadController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      appBar: AppBar(
        title: Text('DownloadView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DownloadView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
