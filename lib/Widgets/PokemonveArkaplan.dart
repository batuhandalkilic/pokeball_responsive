import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/Constants/Constans.dart';
import 'package:pokeball_vericekme_responsive/Pages/PokemonDetay.dart';

import '../Model/pokemon.dart';

class PokemonveArkaplan extends StatelessWidget {
  final Color mevcutArkaPlan;
  final Pokemon mevcutPoki;
  const PokemonveArkaplan(
      {Key? key, required this.mevcutPoki, required this.mevcutArkaPlan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
          return PokemonDetay(
              mevcutArkaPlan: mevcutArkaPlan, mevcutpoki: mevcutPoki);
        })));
      }),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "images/pokeball.png",
              width: CalculatorPokeArka(90.w, 150.h),
              height: CalculatorPokeArka(90.w, 150.h),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Hero(
                tag: mevcutPoki.img ?? "",
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(
                    color: Colors.teal,
                  ),
                  imageUrl: mevcutPoki.img!,
                  width: CalculatorPokeArka(91.w, 140.h),
                  height: CalculatorPokeArka(91.w, 140.h),
                  fit: BoxFit.fitHeight,
                ),
              ))
        ],
      ),
    );
  }

  double CalculatorPokeArka(double portraitMode, double horizantalMode) {
    return ScreenUtil().orientation == Orientation.portrait
        ? portraitMode
        : horizantalMode;
  }
}
