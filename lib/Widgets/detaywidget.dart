import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/Constants/Constans.dart';
import 'package:pokeball_vericekme_responsive/Model/pokemon.dart';

class detaywidget extends StatelessWidget {
  final Pokemon mevcutPoki;
  const detaywidget({Key? key, required this.mevcutPoki}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mevcutPoki.name!,
              style: Constans.appTitleTextStyle(),
            ),
            SizedBox(
              height: 8.h,
            ),
            Chip(label: Text(mevcutPoki.type!.join(", ")))
          ],
        ),
        Text(
          "#" + mevcutPoki.num!,
          style: Constans.appTitleTextStyle(),
        )
      ],
    );
  }
}
