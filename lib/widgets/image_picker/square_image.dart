import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:universal_io/io.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';

Widget squareImagePicker({
  required String pathImage,
  required File? fileImage,
  required Uint8List? byteImage,
  String urlImage = '',
  String nameImage = '',
  required Function() onCLick,
  required Size size,
  double? ratio,
}) =>
    AspectRatio(
      aspectRatio: ratio ?? (size.width <= 500 ? 16 / 6 : 16 / 4),
      child: Container(
        width: Get.width,
        margin: const EdgeInsets.all(20),
        decoration: urlImage != '' && nameImage == ''
            ? customeImageCardStyle(
                imageProvider: NetworkImage(urlImage), color: white)
            : GetPlatform.isWeb
                ? customeImageCardStyle(
                    imageProvider:
                        pathImage != '' ? MemoryImage(byteImage!) : null,
                    color: white)
                : customeImageCardStyle(
                    imageUri: pathImage != '' ? fileImage : null, color: white),
        child: Stack(
          children: [
            _addButton(onCLick: onCLick),
            _iconImage(pathImage),
          ],
        ),
      ),
    );

Widget _addButton({
  required Function() onCLick,
}) =>
    Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: customRoundedShadowStyle(color: mainColor_1),
        child: IconButton(
          onPressed: onCLick,
          icon: Icon(
            Icons.add_a_photo_outlined,
            color: white,
          ),
        ),
      ),
    );

Widget _iconImage(
  String pathImage,
) =>
    pathImage == ""
        ? Align(
            alignment: Alignment.center,
            child: Icon(
              PhosphorIconsDuotone.imageSquare,
              color: green_1,
              size: 70,
            ),
          )
        : Container();
