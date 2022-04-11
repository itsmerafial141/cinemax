import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomepageController());
    return Scaffold(
      appBar: AppBar(
        title: Text('HomepageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomepageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
