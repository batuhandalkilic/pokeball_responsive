import 'package:flutter/material.dart';
import 'package:pokeball_vericekme_responsive/Pages/HomePage.dart';

import '../Constants/Constans.dart';
import '../Model/pokemon.dart';

class PokeMiniInfo extends StatelessWidget {
  const PokeMiniInfo({
    Key? key,
    required this.mevcutPoki,
  }) : super(key: key);

  final Pokemon mevcutPoki;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mevcutPoki.name!,
          style: Constans.cartTitleTextStyle(),
        ),
        Chip(
            backgroundColor: Color.fromARGB(255, 53, 52, 52),
            label: Text(
              mevcutPoki.type![0],
              style: Constans.cartTitleTextStyle(),
            )),
      ],
    );
  }
}
