import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex_flutter/core/controller/services/api.dart';
import 'package:pokedex_flutter/core/widgets/alert_widget/alert.widget.dart';
import 'package:pokedex_flutter/model/pokemon_details.model.dart';
import 'package:pokedex_flutter/model/pokemon_list_model.dart';

class PokemonController extends GetxController {
  Future fetchPokemonList(
    PagingController<int, Result> pagingController,
    int pageKey,
  ) async {
    if (kDebugMode) {
      print('pagekey: $pageKey');
    }
    try {
      PokemonListModel? newItems = await fetchPokemons(pageKey);

      final isLastPage = newItems!.results!.length >= newItems.count!;
      if (isLastPage) {
        pagingController.appendLastPage(newItems.results!);
      } else {
        final nextPageKey = pageKey + newItems.results!.length;
        pagingController.appendPage(newItems.results!, nextPageKey);
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      pagingController.error = error;
    }
  }

  Future<PokemonListModel?> fetchPokemons(int pageKey) async {
    try {
      final res = await Api.get(
        'pokemon/?offset=$pageKey&limit=20',
      );

      return compute(pokemonListModelFromJson, res.body);
    } catch (e) {
      showAlertDialog(
        message: 'Something went wrong',
        title: 'Error',
      );
    }
  }

  Future<PokemonDetailsModel?> fetchPokemonDetails(String pokemonName) async {
    try {
      final res = await Api.get(
        'pokemon/$pokemonName',
      );

      return compute(pokemonDetailsModelFromJson, res.body);
    } catch (e) {
      showAlertDialog(
        message: 'Something went wrong',
        title: 'Error',
      );
    }
  }
}
