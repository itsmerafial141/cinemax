import 'dart:async';

import 'package:get/get.dart';

class DownloadController extends GetxController {
  var downloadPause = true.obs;

  var downloadProgress = 100.obs;

  void resumneDownload() {
    Timer.periodic(
      const Duration(milliseconds: 100),
      (timer) {
        // print(timer.tick);
        if (downloadPause.isFalse) {
          downloadProgress.value--;
          if (downloadProgress.value == 1) {
            print('Cancel timer');
            timer.cancel();
            downloadProgress.value = 100;
            downloadPause.value = true;
          }
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    downloadPause.value = true;
    downloadProgress.value = 100;
  }
}
