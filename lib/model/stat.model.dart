import 'package:pokedex_flutter/model/species.model.dart';

class StatModel {
  StatModel({
    this.baseStat,
    this.effort,
    this.stat,
  });

  final int? baseStat;
  final int? effort;
  final SpeciesModel? stat;

  factory StatModel.fromJson(Map<String, dynamic> json) => StatModel(
        baseStat: json['base_stat'],
        effort: json['effort'],
        stat: json['stat'] == null ? null : SpeciesModel.fromJson(json['stat']),
      );

  Map<String, dynamic> toJson() => {
        'base_stat': baseStat,
        'effort': effort,
        'stat': stat == null ? null : stat!.toJson(),
      };
}
