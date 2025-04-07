import 'package:flutter/material.dart';
import 'package:pokepedia/models/pokemon.dart';
import 'package:pokepedia/widgets/canvas.dart';

class PokemonDetails extends StatelessWidget {
  final PokemonDetail pokemon;
  const PokemonDetails({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ScreenCanvas(widgets: [
      Text(pokemon.name),
      Image.network(pokemon.image),
    ]);
  }
}
