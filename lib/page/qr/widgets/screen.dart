import 'package:flutter/material.dart';
import 'package:movie_app/controller/page/qr_page_controller.dart';
import 'package:movie_app/style/color.dart';
import 'package:movie_app/style/text.dart';
import 'package:qr_flutter/qr_flutter.dart';

Widget screenPage(
  QrPageController controller,
  Size size,
) =>
    Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            controller.movieModel.value.name ?? '',
            style: bold_18_2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: QrImageView(
                data: controller.movieModel.value.id!,
                version: QrVersions.auto,
                size: size.width * 0.7,
                foregroundColor: white,
                gapless: false,
              ),
            ),
          ),
        ],
      ),
    );
