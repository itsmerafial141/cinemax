import 'package:chewie/chewie.dart';
import 'package:cinemax/app/values/colors.dart';
import 'package:cinemax/app/values/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class TrailerController extends GetxController with StateMixin {
  var id = Get.arguments[0]["id"];
  var startTrailer = false.obs;

  late VideoPlayerController videoTrailerController;
  ChewieController? chewieController;

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

  void playVideoController() {
    startTrailer.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    try {
      initializedPlayer();
    } catch (err) {
      print(err.toString());
    }
  }

  @override
  void onClose() {
    super.onClose();
    videoTrailerController.dispose();
    chewieController!.dispose();
    startTrailer.value = false;
  }

  @override
  void dispose() {
    super.dispose();
    videoTrailerController.dispose();
    chewieController!.dispose();
    startTrailer.value = false;
  }

  Future<void> initializedPlayer() async {
    videoTrailerController = VideoPlayerController.network(
      MyStrings.listUpcomingMovies
          .where((element) => element["id"] == id)
          .toList()[0]["link_video"]
          .toString(),
    );
    try {
      await Future.wait([videoTrailerController.initialize()]);
    } catch (err) {
      print(err.toString());
    }
    chewieController = ChewieController(
        videoPlayerController: videoTrailerController,
        autoPlay: startTrailer.isTrue ? true : false,
        looping: true,
        materialProgressColors: ChewieProgressColors(
          playedColor: MyColors.blueAccent,
          handleColor: MyColors.white,
          backgroundColor: MyColors.grey50,
          bufferedColor: MyColors.grey,
        ),
        placeholder: Container(
          color: MyColors.soft,
        ),
        autoInitialize: true);
    update();
  }
}
