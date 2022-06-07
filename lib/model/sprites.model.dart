import 'package:pokedex_flutter/model/other.model.dart';

import 'versions.model.dart';

class SpritesModel {
  SpritesModel({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  final String? backDefault;
  final dynamic backFemale;
  final String? backShiny;
  final dynamic backShinyFemale;
  final String? frontDefault;
  final dynamic frontFemale;
  final String? frontShiny;
  final dynamic frontShinyFemale;
  final OtherModel? other;
  final VersionsModel? versions;
  final SpritesModel? animated;

  factory SpritesModel.fromJson(Map<String, dynamic> json) => SpritesModel(
        backDefault: json['back_default'],
        backFemale: json['back_female'],
        backShiny: json['back_shiny'],
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female'],
        other:
            json['other'] == null ? null : OtherModel.fromJson(json['other']),
        versions: json['versions'] == null
            ? null
            : VersionsModel.fromJson(json['versions']),
        animated: json['animated'] == null
            ? null
            : SpritesModel.fromJson(json['animated']),
      );

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_female': backFemale,
        'back_shiny': backShiny,
        'back_shiny_female': backShinyFemale,
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
        'other': other == null ? null : other!.toJson(),
        'versions': versions == null ? null : versions!.toJson(),
        'animated': animated == null ? null : animated!.toJson(),
      };
}
