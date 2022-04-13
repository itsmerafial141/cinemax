import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NavigationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
