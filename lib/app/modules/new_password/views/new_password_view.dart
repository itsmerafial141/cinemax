import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
