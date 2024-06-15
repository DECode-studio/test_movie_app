import 'package:flutter/material.dart';
import 'package:movie_app/controller/page/main_page_controller.dart';
import 'package:movie_app/style/text.dart';

Widget headerPage(
  MainPageController controller,
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
            Expanded(
              child: desktopTitle(controller),
            )
          ],
        ),
      ),
    );

Widget desktopTitle(
  MainPageController controller,
) =>
    SizedBox(
      height: 46,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Page / Main / Detail',
            style: bold_12_4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Main Page',
            style: normal_20_4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
