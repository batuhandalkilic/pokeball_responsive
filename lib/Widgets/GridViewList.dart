import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/constants/Constans.dart';
import 'package:pokeball_vericekme_responsive/Model/pokemon.dart';

import 'CardWidget.dart';

class GridViewListee extends StatelessWidget {
  final List<Pokemon> pokemonList;
  const GridViewListee({Key? key, required this.pokemonList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: Constans.PortraitandHorizantal(5.w, 2.h),
        crossAxisCount: Constans.PortraitandHorizantal(2, 3).toInt(),
      ),
      itemCount: pokemonList.length,
      itemBuilder: (BuildContext context, int index) {
        Pokemon mevcutPoki = pokemonList[index];
        return CardWidget(mevcutPoki: mevcutPoki);
      },
    );
  }
}
