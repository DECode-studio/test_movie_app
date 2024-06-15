import 'package:get/get.dart';
import 'package:movie_app/model/movie.dart';

class QrPageController extends GetxController {
  final argument = Get.arguments;
  var movieModel = ResultMovie().obs;

  @override
  void onInit() {
    super.onInit();
    getDat();
  }

  void getDat() {
    if (argument != null && argument['data'] != null) {
      movieModel.value = argument['data'];
    }
  }
}
