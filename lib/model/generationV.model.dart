import 'package:pokedex_flutter/model/sprites.model.dart';

class GenerationVModel {
  GenerationVModel({
    this.blackWhite,
  });

  final SpritesModel? blackWhite;

  factory GenerationVModel.fromJson(Map<String, dynamic> json) =>
      GenerationVModel(
        blackWhite: json['black-white'] == null
            ? null
            : SpritesModel.fromJson(json['black-white']),
      );

  Map<String, dynamic> toJson() => {
        'black-white': blackWhite == null ? null : blackWhite!.toJson(),
      };
}
