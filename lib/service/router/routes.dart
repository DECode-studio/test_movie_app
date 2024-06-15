import 'package:get/get.dart';
import 'package:movie_app/page/main/main.dart';

var appRoutes = <GetPage<dynamic>>[
  // Service Page
  GetPage(
    name: '/',
    page: () => const MainPage(),
    transition: Transition.fadeIn,
  ),
];
