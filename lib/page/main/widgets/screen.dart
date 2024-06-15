import 'package:flutter/material.dart';
import 'package:movie_app/controller/page/main_page_controller.dart';
import 'package:movie_app/widgets/load/load.dart';

import 'card.dart';

Widget screenPage(
  MainPageController controller,
  Size size,
) =>
    controller.loadData.value
        ? spinLoad()
        : ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: controller.movieModel.value.results!.length,
            itemBuilder: (_, index) => cardData(
              controller,
              controller.movieModel.value.results![index],
              size,
            ),
          );
