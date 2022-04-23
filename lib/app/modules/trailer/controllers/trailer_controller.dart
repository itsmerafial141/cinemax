import 'package:cinemax/app/values/strings.dart';
import 'package:get/get.dart';

class TrailerController extends GetxController {
  var id = Get.arguments[0]["id"];

  List<Map<String, String>> getListUpcomingMovie() {
    return MyStrings.listUpcomingMovies
        .where((element) => element["id"] == id)
        .toList();
  }

  List<Map<String, String>> getListUpcomingMovieCastAndCrew() {
    return MyStrings.listCastAndCrew
        .where((element) => element["id_upMovie"] == id)
        .toList();
  }

  List<Map<String, String>> getListUpcomingMovieGallery() {
    return MyStrings.listUpcomingMoviesGallery
        .where((element) => element["id_upMovie"] == id)
        .toList();
  }
}
