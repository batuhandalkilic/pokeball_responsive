// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Model/pokemon.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class Constans {
  Constans._();

  static Future<List<Pokemon>> getPokemonList() async {
    List<Pokemon> _list = [];
    var response = await Dio().get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");

    List list = jsonDecode(response.data)["pokemon"];

    if (response.statusCode == 200) {
      _list = list.map((e) => Pokemon.fromMap(e)).toList();
      return _list;
    } else {
      return [];
    }
  }

  // Color

  static TextStyle appTitleTextStyle() {
    return TextStyle(
        color: Colors.white, fontSize: 32.sp, fontWeight: FontWeight.bold);
  }

  static TextStyle pokemonListTileText() {
    return TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold);
  }

  static TextStyle cartTitleTextStyle() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return TextStyle(
        color: const Color.fromARGB(255, 255, 254, 254),
        fontSize: 22.sp,
      );
    } else {
      return TextStyle(
        color: const Color.fromARGB(255, 255, 254, 254),
        fontSize: 32.sp,
      );
    }
  }

  static Color backArrowColor() {
    return Colors.white;
  }

  //Padding

  static EdgeInsets GlobalPaddingLeft() {
    return const EdgeInsets.only(left: 10).r;
  }

  static EdgeInsets HorizantalDetayPadding() {
    return const EdgeInsets.only(top: 30, left: 30, right: 30).r;
  }

  // portrait ? horizantal

  static double PortraitandHorizantal(
      double PortraitMode, double HorizantalMode) {
    return ScreenUtil().orientation == Orientation.portrait
        ? PortraitMode
        : HorizantalMode;
  }
}
