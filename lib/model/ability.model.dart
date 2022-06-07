import 'package:pokedex_flutter/model/species.model.dart';

class AbilityModel {
  AbilityModel({
    this.ability,
    this.isHidden,
    this.slot,
  });

  final SpeciesModel? ability;
  final bool? isHidden;
  final int? slot;

  factory AbilityModel.fromJson(Map<String, dynamic> json) => AbilityModel(
        ability: json['ability'] == null
            ? null
            : SpeciesModel.fromJson(json['ability']),
        isHidden: json['is_hidden'],
        slot: json['slot'],
      );

  Map<String, dynamic> toJson() => {
        'ability': ability == null ? null : ability!.toJson(),
        'is_hidden': isHidden,
        'slot': slot,
      };
}
