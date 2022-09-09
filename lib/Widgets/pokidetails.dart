import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/Constants/Constans.dart';

class Pokidetails extends StatefulWidget {
  final mevcutpokemon;
  const Pokidetails({Key? key, this.mevcutpokemon}) : super(key: key);

  @override
  _PokidetailsState createState() => _PokidetailsState();
}

class _PokidetailsState extends State<Pokidetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 8,
        child: Column(
          children: [
            _buildListTile("Name", widget.mevcutpokemon.name),
            _buildListTile("Height", widget.mevcutpokemon.height),
            _buildListTile("Weight", widget.mevcutpokemon.weight),
            _buildListTile("Spawn Time", widget.mevcutpokemon.spawnTime),
            _buildListTile("Weakness", widget.mevcutpokemon.weaknesses),
            _buildListTile("Pre Evolution", widget.mevcutpokemon.prevEvolution),
            _buildListTile(
                "Next Evolution", widget.mevcutpokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(String property, dynamic mevcutPokemonn) {
    if (mevcutPokemonn == null) {
      return ListTile(
        leading: Text(property, style: Constans.pokemonListTileText()),
        trailing: Text("Mevcut değil"),
      );
    } else if (mevcutPokemonn is List) {
      if (mevcutPokemonn is List<String>) {
        return ListTile(
          leading: Text(property, style: Constans.pokemonListTileText()),
          trailing: Text(mevcutPokemonn.join(", ")),
        );
      } else {
        return ListTile(
          leading: Text(property, style: Constans.pokemonListTileText()),
          trailing: Text(mevcutPokemonn.join(", ")),
        );
      }
    } else {
      return ListTile(
        leading: Text(property, style: Constans.pokemonListTileText()),
        trailing: Text(mevcutPokemonn),
      );
    }
  }
}
