import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/style/color.dart';

const titleToast = 'movie_app Message';

void successToast(String text) => Get.snackbar(titleToast, text,
    backgroundColor: white,
    icon: Icon(
      Icons.check_circle_rounded,
      color: green,
    ));

void warningToast(String text) => Get.snackbar(titleToast, text,
    backgroundColor: white,
    icon: Icon(
      Icons.warning,
      color: yellow,
    ));

void dangerToast(String text) => Get.snackbar(titleToast, text,
    backgroundColor: white,
    icon: Icon(
      Icons.dangerous,
      color: red,
    ));

void bottomToast(String text) => Get.snackbar(
      titleToast,
      text,
      backgroundColor: white,
      snackPosition: SnackPosition.BOTTOM,
    );
