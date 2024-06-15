import 'package:flutter/material.dart';
import 'package:movie_app/controller/page/main_page_controller.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/service/formater/date.dart';
import 'package:movie_app/style/box.dart';
import 'package:movie_app/style/color.dart';
import 'package:movie_app/style/text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget cardData(
  MainPageController controller,
  ResultMovie data,
  Size size,
) =>
    GestureDetector(
      onTap: () => controller.actionMethod(
        mode: 'qr',
        data: data,
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: customRoundedShadowStyle(
          color: white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: mainColor_1,
              child: Icon(
                PhosphorIcons.monitorPlay(),
                color: white,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: _detailCard(
                controller,
                data,
                size,
              ),
            )
          ],
        ),
      ),
    );

Widget _detailCard(
  MainPageController controller,
  ResultMovie data,
  Size size,
) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name ?? '',
          style: bold_15_4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Column(
          children: [
            _itemData(title: 'id : ', data: data.id ?? ''),
            _itemData(
                title: 'published_at : ',
                data: dateDayTimeFormater(data.publishedAt)),
          ],
        ),
      ],
    );

Widget _itemData({
  required String title,
  required String data,
}) =>
    Row(
      children: [
        Text(
          title,
          style: normal_12_1,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            data,
            style: normal_12_3,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
