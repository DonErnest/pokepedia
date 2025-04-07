import 'package:pokepedia/api.dart';
import 'package:pokepedia/models/pokemon.dart';

Future<List<PokemonDisplay>> downLoadPokemons(int page) async {
    final rawData = await getPokemons(page);
    if (rawData != null && rawData.length != 0) {
      return List<PokemonDisplay>.from(
        rawData.map((json) => PokemonDisplay.fromJson(json)).toList(),
      );
    }
    return [];
}


Future<PokemonDetail?> downloadPokemon(String url) async {
  final rawData = await getPokemon(url);
  if (rawData != null) {
    return PokemonDetail.fromJson(rawData);
  }
  return null;
}