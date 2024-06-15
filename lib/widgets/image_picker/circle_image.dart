import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:universal_io/io.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';

Widget circleImagePicker({
  required String pathImage,
  required File? fileImage,
  required Uint8List? byteImage,
  required Function() onCLick,
}) =>
    Container(
      width: 200,
      height: 200,
      decoration: GetPlatform.isWeb
          ? circleImageCard(
              imageProvider: pathImage != '' ? MemoryImage(byteImage!) : null)
          : circleImageCard(imageUri: pathImage != '' ? fileImage : null),
      child: Stack(
        children: [
          _addButton(onCLick: onCLick),
          _iconImage(pathImage),
        ],
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
