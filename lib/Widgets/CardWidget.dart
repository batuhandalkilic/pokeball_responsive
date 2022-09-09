// ignore_for_file: constant_identifier_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Model/pokemon.dart';
import 'PokeMiniInfo.dart';
import 'PokemonveArkaplan.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.mevcutPoki,
  }) : super(key: key);

  final Pokemon mevcutPoki;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: selectColor(
          mevcutPoki.type![0]), //selectColor(mevcutPoki.type?[0] ?? "white"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      elevation: 8.r,
      child: Padding(
        padding: EdgeInsets.all(10.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PokeMiniInfo(mevcutPoki: mevcutPoki),
            Expanded(
                child: PokemonveArkaplan(
                    mevcutArkaPlan: selectColor(mevcutPoki.type![0]),
                    mevcutPoki: mevcutPoki)),
          ],
        ),
      ),
    );
  }

  selectColor(String getType) {
    switch (getType) {
      case "Grass":
        return Colors.green;
      case "Fire":
        return Colors.redAccent;
      case "Water":
        return Colors.blue;
      case "Bug":
        return Colors.brown;
      case "Normal":
        return Colors.teal;
      case "Fighting":
        return Color.fromARGB(255, 84, 106, 85);
      case "Psychic":
        return Colors.lime;
      case "Rock":
        return Color.fromARGB(255, 106, 99, 99);
      case "Poison":
        return Colors.deepPurple;
      default:
        return Colors.black;
    }
  }
}
