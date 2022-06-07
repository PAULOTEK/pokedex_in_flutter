import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex_flutter/core/controller/pokemon_controller.dart';
import 'package:pokedex_flutter/model/pokemon_list_model.dart';
import 'package:pokedex_flutter/view/pokemon_details.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokemonController? pokemonController;
  Future<PokemonListModel>? pokemonListFuture;

  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 0);

  void _setup() {
    pokemonController = Get.put(PokemonController());
    _pagingController.addPageRequestListener(
      (pageKey) {
        pokemonController!.fetchPokemonList(_pagingController, pageKey);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pagingController.dispose();
  }

  void iniState() {
    _setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: SafeArea(
        child: PagedListView<int, Result>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Result>(
            itemBuilder: (context, item, index) {
              final Result pokemon = item;
              return ListTile(
                onTap: () {
                  Get.to(
                    PokemonDetailsPage(pokemonName: pokemon.name!),
                  );
                },
                title: Text(
                  '${pokemon.name}'.toUpperCase(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
