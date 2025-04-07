import 'package:flutter/material.dart';
import 'package:pokepedia/models/pokemon.dart';
import 'package:pokepedia/screens/main.dart';
import 'package:pokepedia/services/pokemons.dart';

class Pokepedia extends StatefulWidget {
  const Pokepedia({super.key});

  @override
  State<Pokepedia> createState() => _PokepediaState();
}

class _PokepediaState extends State<Pokepedia> {
  int page = 1;
  List<PokemonDisplay> pokemons = [];

  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
