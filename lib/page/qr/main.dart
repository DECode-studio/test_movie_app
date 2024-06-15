import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/page/qr_page_controller.dart';
import 'package:movie_app/style/color.dart';

import 'widgets/header.dart';
import 'widgets/screen.dart';

void qrModal({
  Map? param,
}) =>
    Get.dialog(
      arguments: param,
      barrierDismissible: false,
      AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        content: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 600,
            height: Get.height * 0.5,
            child: const QrPage(),
          ),
        ),
      ),
    );

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetBuilder<QrPageController>(
      init: QrPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: mainColor_1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor_1,
          toolbarHeight: 66,
          automaticallyImplyLeading: false,
          flexibleSpace: headerPage(controller, size),
        ),
        body: screenPage(controller, size),
      ),
    );
  }
}
