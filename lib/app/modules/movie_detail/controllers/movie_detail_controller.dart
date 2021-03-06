import 'package:get/get.dart';

import '../../../values/strings.dart';

class MovieDetailController extends GetxController {
  var id = Get.arguments;
  var idSeason = "SSMV30".obs;

  var seassonDropDown = false.obs;

  String listDataPickerEqualsId(String data) {
    return MyStrings.listDataMovie
        .where(
          (element) => element["id"] == id[0]["id"],
        )
        .toList()[0][data]
        .toString();
  }

  List<Map<String, String>> listDataPickerJoinById(
    List<Map<String, String>> dataPickList,
    String idDataPick,
    String idDataJoin,
  ) {
    return dataPickList
        .where((element) => element[idDataPick] == idDataJoin)
        .toList();
  }

  @override
  void onInit() {
    super.onInit();
    if (MyStrings.listDataMovie
            .where(
              (element) => element["id"] == id[0]["id"],
            )
            .toList()[0]["category"]
            .toString() ==
        "Serial") {
      idSeason.value = listDataPickerJoinById(
        MyStrings.listSessionsMovie,
        "id_movie",
        id[0]["id"],
      )[0]["id"]
          .toString();
    }
  }
}
