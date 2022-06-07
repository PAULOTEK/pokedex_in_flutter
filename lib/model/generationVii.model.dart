import 'package:pokedex_flutter/model/dream_world.model.dart';
import 'package:pokedex_flutter/model/generationVI.model.dart';

class GenerationViiModel {
  GenerationViiModel({
    this.icons,
    this.ultraSunUltraMoon,
  });

  final DreamWorldModel? icons;
  final GenerationViModel? ultraSunUltraMoon;

  factory GenerationViiModel.fromJson(Map<String, dynamic> json) =>
      GenerationViiModel(
        icons: json['icons'] == null
            ? null
            : DreamWorldModel.fromJson(json['icons']),
        ultraSunUltraMoon: json['ultra-sun-ultra-moon'] == null
            ? null
            : GenerationViModel.fromJson(json['ultra-sun-ultra-moon']),
      );

  Map<String, dynamic> toJson() => {
        'icons': icons == null ? null : icons!.toJson(),
        'ultra-sun-ultra-moon':
            ultraSunUltraMoon == null ? null : ultraSunUltraMoon!.toJson(),
      };
}
