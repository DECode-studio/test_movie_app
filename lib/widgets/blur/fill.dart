import 'package:flutter/material.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';

Widget blackFill() => Positioned.fill(
      child: Container(
        decoration: customRoundedShadowStyle(color: black.withAlpha(200)),
      ),
    );
