import 'package:pokedex_flutter/model/dream_world.model.dart';

class GenerationViiiModel {
  GenerationViiiModel({
    this.icons,
  });

  final DreamWorldModel? icons;

  factory GenerationViiiModel.fromJson(Map<String, dynamic> json) =>
      GenerationViiiModel(
        icons: json['icons'] == null
            ? null
            : DreamWorldModel.fromJson(json['icons']),
      );

  Map<String, dynamic> toJson() => {
        'icons': icons == null ? null : icons!.toJson(),
      };
}
