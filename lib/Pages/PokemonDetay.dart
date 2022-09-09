import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/Constants/Constans.dart';

import '../Model/pokemon.dart';
import '../Widgets/PokeMiniInfo.dart';
import '../Widgets/PokemonveArkaplan.dart';
import '../Widgets/detaywidget.dart';
import '../Widgets/pokidetails.dart';

class PokemonDetay extends StatelessWidget {
  final Color mevcutArkaPlan;
  final Pokemon mevcutpoki;
  const PokemonDetay(
      {Key? key, required this.mevcutpoki, required this.mevcutArkaPlan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtil().orientation == Orientation.portrait
          ? portialMethod(context)
          : HorizantalMethod(context),
    );
  }

  Scaffold portialMethod(BuildContext context) {
    return Scaffold(
      backgroundColor: mevcutArkaPlan,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (() => Navigator.pop(context)),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Constans.backArrowColor(),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: detaywidget(mevcutPoki: mevcutpoki),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 60,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Pokidetails(mevcutpokemon: mevcutpoki)),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset("images/pokeball.png"),
                    width: 100.h,
                  ),
                  Positioned(
                    width: 150.w,
                    top: 20.h,
                    right: 0.3.sw,
                    child: Hero(
                        tag: mevcutpoki.img!,
                        child:
                            CachedNetworkImage(imageUrl: mevcutpoki.img ?? "")),
                  ),
                ],
              ),
            )
          ]),
    );
  }

  Scaffold HorizantalMethod(BuildContext context) {
    return Scaffold(
      backgroundColor: mevcutArkaPlan,
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 35).r,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (() => Navigator.pop(context)),
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Constans.backArrowColor(),
                  )),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          detaywidget(mevcutPoki: mevcutpoki),
                          Hero(
                              tag: mevcutpoki.img!,
                              child: CachedNetworkImage(
                                  imageUrl: mevcutpoki.img ?? "")),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                          height: 100,
                          child: Pokidetails(mevcutpokemon: mevcutpoki)),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
