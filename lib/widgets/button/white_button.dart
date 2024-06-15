import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';
import 'package:movie_app/style/text.dart';

Widget whiteButton({
  required Function() onClick,
  required Color color,
  required String text,
  double? width,
  bool shadow = false,
  double? borderRadius,
}) =>
    Container(
      width: width ?? Get.width,
      padding: GetPlatform.isMobile
          ? null
          : const EdgeInsets.symmetric(vertical: 10),
      decoration: shadow == false
          ? customRoundedStyle(color: white, size: borderRadius)
          : customRoundedShadowStyle(color: white, size: borderRadius),
      child: TextButton(
        onPressed: onClick,
        child: Text(text, style: bold_15_6(color)),
      ),
    );

Widget whiteButtonIcon({
  required Function() onClick,
  required Color color,
  required String text,
  required IconData icon,
  double? width,
  bool shadow = false,
  double? borderRadius,
}) =>
    Container(
      width: width ?? Get.width,
      padding: GetPlatform.isMobile
          ? null
          : const EdgeInsets.symmetric(vertical: 10),
      decoration: shadow == false
          ? customRoundedStyle(color: white, size: borderRadius)
          : customRoundedShadowStyle(color: white, size: borderRadius),
      child: TextButton.icon(
        onPressed: onClick,
        icon: Icon(icon, color: color),
        label: Text(text, style: bold_15_6(color)),
      ),
    );
