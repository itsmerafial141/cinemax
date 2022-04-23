import 'package:get/get.dart';

import '../controllers/trailer_controller.dart';

class TrailerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrailerController>(
      () => TrailerController(),
    );
  }
}
