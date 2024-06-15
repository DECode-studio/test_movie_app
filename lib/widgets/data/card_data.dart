import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';
import 'package:movie_app/style/text.dart';
import 'package:movie_app/widgets/load/load.dart';

Widget cardIcon({
  required String title,
  required String desc,
  IconData? icon,
  String? emoji,
  String? imageUrl,
}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: customRoundedShadowStyle(color: mainColor_1, size: 10),
          child: icon != null
              ? Icon(
                  icon,
                  color: white,
                )
              : emoji != null
                  ? Center(
                      child: Text(
                        emoji,
                        style: bold_30_1,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            height: 45,
                            width: 45,
                            decoration: customeImageCardStyle(
                              imageProvider: imageProvider,
                              size: 10,
                              color: white,
                            ),
                          ),
                          placeholder: (context, url) =>
                              customeSpinLoad(10, 10),
                          errorWidget: (context, url, error) =>
                              const Icon(PhosphorIconsDuotone.warningCircle),
                        )
                      : Container(),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: bold_15_1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                desc,
                style: normal_12_1,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        )
      ],
    );
