import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/service/core_app_controller.dart';

import 'service/function/scroll.dart';
import 'service/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CoreAppController>(
      init: CoreAppController(),
      builder: (controller) => GetMaterialApp(
        title: 'Movie App',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        initialRoute: '/',
        getPages: appRoutes,
      ),
    );
  }
}
