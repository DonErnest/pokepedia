import 'dart:convert';

import 'package:http/http.dart';

final baseUri = "https://pokeapi.co/api/v2/pokemon/";


Future<(dynamic, bool)> getPokemons(int? page) async {
  var uriStr = baseUri;
  bool nextAvailable = false;

  if (page != null && page != 1) {
    uriStr += "?offset=${20 * page}";
  }
  final uri = Uri.parse(uriStr);
  try {
    final response = await get(uri);
    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      if (jsonData.get("next") != null) {
        nextAvailable = true;
      }
      return (jsonData["results"], nextAvailable);
    }
  } catch (error) {
    return (null, false);
  }
  return (null, false);
}


Future<dynamic> getPokemon(String uriStr) async {
  final uri = Uri.parse(uriStr);
  try {
    final response = await get(uri);
    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      return jsonData;
    }
  } catch (error) {
    return null;
  }
}