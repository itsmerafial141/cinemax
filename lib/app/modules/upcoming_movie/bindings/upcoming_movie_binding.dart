import 'package:get/get.dart';

import '../controllers/upcoming_movie_controller.dart';

class UpcomingMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpcomingMovieController>(
      () => UpcomingMovieController(),
    );
  }
}
