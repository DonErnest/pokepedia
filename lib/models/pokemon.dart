class PokemonDisplay {
  final String name;
  final String url;

  factory PokemonDisplay.fromJson(Map<String, dynamic> json) {
    return PokemonDisplay(
      name: json["name"],
      url: json["url"]
    );
  }

  const PokemonDisplay({
    required this.name,
    required this.url
  });
}


class PokemonDetail {
  final String name;
  final List<String> type;
  final int height;
  final int weight;
  final String image;

  factory PokemonDetail.fromJson(Map<String, dynamic> json) {
    List<String> types = [];

    for (var type in json["types"]) {
      types.add(type["type"]["name"]);
    }

    return PokemonDetail(
      name: json["name"],
      type: types,
      height: json["height"],
      weight: json["weight"],
      image: json["sprites"]["front_default"],
    );
  }

  const PokemonDetail({
    required this.name,
    required this.type,
    required this.height,
    required this.weight,
    required this.image,
  });
}
