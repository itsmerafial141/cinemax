import 'package:get/get.dart';

import '../controllers/most_popular_movie_controller.dart';

class MostPopularMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MostPopularMovieController>(
      () => MostPopularMovieController(),
    );
  }
}
