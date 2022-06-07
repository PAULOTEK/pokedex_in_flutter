import 'package:pokedex_flutter/model/species.model.dart';

class VersionGroupDetailModel {
  VersionGroupDetailModel({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  final int? levelLearnedAt;
  final SpeciesModel? moveLearnMethod;
  final SpeciesModel? versionGroup;

  factory VersionGroupDetailModel.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetailModel(
        levelLearnedAt: json['level_learned_at'],
        moveLearnMethod: json['move_learn_method'] == null
            ? null
            : SpeciesModel.fromJson(json['move_learn_method']),
        versionGroup: json['version_group'] == null
            ? null
            : SpeciesModel.fromJson(json['version_group']),
      );

  Map<String, dynamic> toJson() => {
        'level_learned_at': levelLearnedAt,
        'move_learn_method':
            moveLearnMethod == null ? null : moveLearnMethod!.toJson(),
        'version_group': versionGroup == null ? null : versionGroup!.toJson(),
      };
}
