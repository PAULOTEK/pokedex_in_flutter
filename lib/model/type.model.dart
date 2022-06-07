import 'package:pokedex_flutter/model/species.model.dart';

class TypeModel {
  TypeModel({
    this.slot,
    this.type,
  });

  final int? slot;
  final SpeciesModel? type;

  factory TypeModel.fromJson(Map<String, dynamic> json) => TypeModel(
        slot: json['slot'],
        type: json['type'] == null ? null : SpeciesModel.fromJson(json['type']),
      );

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'type': type == null ? null : type!.toJson(),
      };
}
