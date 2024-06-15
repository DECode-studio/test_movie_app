import 'package:flutter/material.dart';
import 'package:movie_app/controller/page/qr_page_controller.dart';
import 'package:movie_app/service/router/navigator.dart';
import 'package:movie_app/style/color.dart';
import 'package:movie_app/style/text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget headerPage(
  QrPageController controller,
  Size size,
) =>
    SafeArea(
      child: Container(
        height: 66,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigate().back(),
              icon: Icon(
                PhosphorIconsBold.caretLeft,
                color: white,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: desktopTitle(controller),
            )
          ],
        ),
      ),
    );

Widget desktopTitle(
  QrPageController controller,
) =>
    SizedBox(
      height: 46,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Page / QR / Detail',
            style: bold_12_2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'QR Page',
            style: normal_20_2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
