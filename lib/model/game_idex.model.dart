import 'package:pokedex_flutter/model/species.model.dart';

class GameIndexModel {
  GameIndexModel({
    this.gameIndex,
    this.version,
  });

  final int? gameIndex;
  final SpeciesModel? version;

  factory GameIndexModel.fromJson(Map<String, dynamic> json) => GameIndexModel(
        gameIndex: json['game_index'],
        version: json['version'] == null
            ? null
            : SpeciesModel.fromJson(json['version']),
      );

  Map<String, dynamic> toJson() => {
        'game_index': gameIndex,
        'version': version == null ? null : version!.toJson(),
      };
}
