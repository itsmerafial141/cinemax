import 'package:get/get.dart';

import '../controllers/premium_account_controller.dart';

class PremiumAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PremiumAccountController>(
      () => PremiumAccountController(),
    );
  }
}
