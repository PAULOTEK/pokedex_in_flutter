import 'dart:convert';

import 'package:pokedex_flutter/model/move.model.dart';
import 'package:pokedex_flutter/model/species.model.dart';
import 'package:pokedex_flutter/model/sprites.model.dart';
import 'package:pokedex_flutter/model/stat.model.dart';
import 'package:pokedex_flutter/model/type.model.dart';

import 'ability.model.dart';
import 'game_idex.model.dart';

PokemonDetailsModel pokemonDetailsModelFromJson(String str) =>
    PokemonDetailsModel.fromJson(json.decode(str));

String pokemonDetailsModelToJson(PokemonDetailsModel data) =>
    json.encode(data.toJson());

class PokemonDetailsModel {
  PokemonDetailsModel({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  final List<AbilityModel>? abilities;
  final int? baseExperience;
  final List<SpeciesModel>? forms;
  final List<GameIndexModel>? gameIndices;
  final int? height;
  final List<dynamic>? heldItems;
  final int? id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final List<MoveModel>? moves;
  final String? name;
  final int? order;
  final List<dynamic>? pastTypes;
  final SpeciesModel? species;
  final SpritesModel? sprites;
  final List<StatModel>? stats;
  final List<TypeModel>? types;
  final int? weight;

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      PokemonDetailsModel(
        abilities: json['abilities'] == null
            ? null
            : List<AbilityModel>.from(
                json['abilities'].map((x) => AbilityModel.fromJson(x))),
        baseExperience: json['base_experience'],
        forms: json['forms'] == null
            ? null
            : List<SpeciesModel>.from(
                json['forms'].map((x) => SpeciesModel.fromJson(x))),
        gameIndices: json['game_indices'] == null
            ? null
            : List<GameIndexModel>.from(
                json['game_indices'].map((x) => GameIndexModel.fromJson(x))),
        height: json['height'],
        heldItems: json['held_items'] == null
            ? null
            : List<dynamic>.from(json['held_items'].map((x) => x)),
        id: json['id'],
        isDefault: json['is_default'],
        locationAreaEncounters: json['location_area_encounters'],
        moves: json['moves'] == null
            ? null
            : List<MoveModel>.from(
                json['moves'].map((x) => MoveModel.fromJson(x))),
        name: json['name'],
        order: json['order'],
        pastTypes: json['past_types'] == null
            ? null
            : List<dynamic>.from(json['past_types'].map((x) => x)),
        species: json['species'] == null
            ? null
            : SpeciesModel.fromJson(json['species']),
        sprites: json['sprites'] == null
            ? null
            : SpritesModel.fromJson(json['sprites']),
        stats: json['stats'] == null
            ? null
            : List<StatModel>.from(
                json['stats'].map((x) => StatModel.fromJson(x))),
        types: json['types'] == null
            ? null
            : List<TypeModel>.from(
                json['types'].map((x) => TypeModel.fromJson(x))),
        weight: json['weight'],
      );

  Map<String, dynamic> toJson() => {
        'abilities': abilities == null
            ? null
            : List<dynamic>.from(abilities!.map((x) => x.toJson())),
        'base_experience': baseExperience,
        'forms': forms == null
            ? null
            : List<dynamic>.from(forms!.map((x) => x.toJson())),
        'game_indices': gameIndices == null
            ? null
            : List<dynamic>.from(gameIndices!.map((x) => x.toJson())),
        'height': height,
        'held_items': heldItems == null
            ? null
            : List<dynamic>.from(heldItems!.map((x) => x)),
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': moves == null
            ? null
            : List<dynamic>.from(moves!.map((x) => x.toJson())),
        'name': name,
        'order': order,
        'past_types': pastTypes == null
            ? null
            : List<dynamic>.from(pastTypes!.map((x) => x)),
        'species': species == null ? null : species!.toJson(),
        'sprites': sprites == null ? null : sprites!.toJson(),
        'stats': stats == null
            ? null
            : List<dynamic>.from(stats!.map((x) => x.toJson())),
        'types': types == null
            ? null
            : List<dynamic>.from(types!.map((x) => x.toJson())),
        'weight': weight,
      };
}
