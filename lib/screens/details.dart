import 'package:flutter/material.dart';
import 'package:pokepedia/models/pokemon.dart';
import 'package:pokepedia/widgets/canvas.dart';

class PokemonDetails extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonDetails({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ScreenCanvas(
      widgets: [
        SizedBox(height: 20),
        Text(pokemon.name.toUpperCase(), style: TextStyle(fontSize: 30)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Image:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                flex: 1,
              ),
              Spacer(flex: 1),
              Expanded(flex: 3, child: Image.network(pokemon.image)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "Height:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text(
                  pokemon.height.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "Weight:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 1,),
              Expanded(
                flex: 3,
                child: Text(
                  pokemon.weight.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "Types:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 1,),
              Expanded(
                flex: 3,
                child: Text(
                  pokemon.type.join(", "),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
