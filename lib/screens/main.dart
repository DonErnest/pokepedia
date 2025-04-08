import 'package:flutter/material.dart';
import 'package:pokepedia/api.dart';
import 'package:pokepedia/models/pokemon.dart';
import 'package:pokepedia/services/pokemons.dart';
import 'package:pokepedia/widgets/canvas.dart';

import 'details.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int page = 1;
  bool nextAvailable = false;
  List<PokemonDisplay> pokemons = [];
  bool isFetching = true;
  late final ScrollController _scrollController;

  Future<void> fetchPokemons() async {
    var (newPokemons, nextPresent) = await downLoadPokemons(page);
    setState(() {
      pokemons += newPokemons;
      nextAvailable = nextPresent;
      isFetching = false;
    });
  }

  void fetchOnEndScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange && nextAvailable) {
      page += 1;
      fetchPokemons();
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(fetchOnEndScroll);
    fetchPokemons();
  }

  Future<void> checkDetails(String url) async {
    var pokemon = await downloadPokemon(url);
    if (pokemon != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (ctx) => PokemonDetails(pokemon: pokemon,)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenCanvas(
      appBarActions: [],
      widgets: [
        Expanded(
          child: ListView.builder(
            itemBuilder:
                (ctx, idx) => Card(
                  child: ListTile(
                    title: Text(pokemons[idx].name.toUpperCase()),
                    onTap: () => checkDetails(pokemons[idx].url),
                  ),
                ),
            itemCount: pokemons.length,
            controller: _scrollController,
          ),
        ),
      ],
    );
  }
}

// mainWidget = Center(child: CircularProgressIndicator());
