import 'package:get/get.dart';
import 'package:movie_app/controller/data/movie.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/page/qr/main.dart';

class MainPageController extends GetxController {
  final movieData = MovieDataController();

  var movieModel = MovieModel().obs;
  var loadData = true.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    loadData.value = true;

    movieModel.value = await movieData.getMovie();

    loadData.value = false;
  }

  void actionMethod({
    required String mode,
    dynamic data,
  }) {
    if (mode == 'qr') {
      var param = {
        'data': data,
      };

      qrModal(param: param);
    }
  }
}
