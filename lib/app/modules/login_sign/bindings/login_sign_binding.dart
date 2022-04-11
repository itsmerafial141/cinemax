import 'package:get/get.dart';

import '../controllers/login_sign_controller.dart';

class LoginSignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginSignController>(
      () => LoginSignController(),
    );
  }
}
