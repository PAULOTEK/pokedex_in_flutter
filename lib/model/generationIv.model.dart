import 'package:pokedex_flutter/model/sprites.model.dart';

class GenerationIvModel {
  GenerationIvModel({
    this.diamondPearl,
    this.heartgoldSoulsilver,
    this.platinum,
  });

  final SpritesModel? diamondPearl;
  final SpritesModel? heartgoldSoulsilver;
  final SpritesModel? platinum;

  factory GenerationIvModel.fromJson(Map<String, dynamic> json) =>
      GenerationIvModel(
        diamondPearl: json['diamond-pearl'] == null
            ? null
            : SpritesModel.fromJson(json['diamond-pearl']),
        heartgoldSoulsilver: json['heartgold-soulsilver'] == null
            ? null
            : SpritesModel.fromJson(json['heartgold-soulsilver']),
        platinum: json['platinum'] == null
            ? null
            : SpritesModel.fromJson(json['platinum']),
      );

  Map<String, dynamic> toJson() => {
        'diamond-pearl': diamondPearl == null ? null : diamondPearl!.toJson(),
        'heartgold-soulsilver':
            heartgoldSoulsilver == null ? null : heartgoldSoulsilver!.toJson(),
        'platinum': platinum == null ? null : platinum!.toJson(),
      };
}
