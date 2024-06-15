import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/page/main_page_controller.dart';
import 'package:movie_app/page/main/widgets/screen.dart';
import 'package:movie_app/style/color.dart';

import 'widgets/header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetX<MainPageController>(
      init: MainPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          toolbarHeight: 66,
          automaticallyImplyLeading: false,
          flexibleSpace: headerPage(controller, size),
        ),
        body: SafeArea(child: screenPage(controller, size)),
      ),
    );
  }
}
