import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_flutter/core/controller/pokemon_controller.dart';
import 'package:pokedex_flutter/core/widgets/indicator_widget/indicator.widget.dart';
import 'package:pokedex_flutter/model/pokemon_details.model.dart';

class PokemonDetailsPage extends StatefulWidget {
  const PokemonDetailsPage({Key? key, required this.pokemonName})
      : super(key: key);

  final String pokemonName;

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  late PokemonController pokemonController;
  late Future<PokemonDetailsModel>? pokemonDetailsFuture;

  void _setup() {
    pokemonController = Get.put(PokemonController());

    pokemonDetailsFuture = () {
      return pokemonController.fetchPokemonDetails(widget.pokemonName);
    }() as Future<PokemonDetailsModel>?;
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemonName.toUpperCase()),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: pokemonDetailsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: IndicatorWidget(),
              );
            }

            final PokemonDetailsModel pokemonDetails =
                snapshot.data as PokemonDetailsModel;

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    Image.network('${pokemonDetails.sprites!.frontDefault}'),
                    Text('${pokemonDetails.name}'.toUpperCase()),
                    Wrap(
                      children: pokemonDetails.abilities!
                          .map(
                            (e) => Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                '${e.ability!.name}'.toUpperCase(),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
