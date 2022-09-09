import 'package:flutter/material.dart';

import '../Model/pokemon.dart';
import '../Widgets/Apptitle.dart';
import '../Widgets/GridViewList.dart';
import '../constants/Constans.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Pokemon>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = Constans.getPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 43, 43),
        body: FutureBuilder(
          future: _pokemonList,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              var apokemonList = snapshot.data!;
              return Column(
                children: [
                  const Apptitle(),
                  Expanded(
                      child: GridViewListee(
                    pokemonList: apokemonList,
                  )),
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
