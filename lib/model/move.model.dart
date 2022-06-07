import 'package:pokedex_flutter/model/species.model.dart';

import 'version_group_detail.model.dart';

class MoveModel {
  MoveModel({
    this.move,
    this.versionGroupDetails,
  });

  final SpeciesModel? move;
  final List<VersionGroupDetailModel>? versionGroupDetails;

  factory MoveModel.fromJson(Map<String, dynamic> json) => MoveModel(
        move: json['move'] == null ? null : SpeciesModel.fromJson(json['move']),
        versionGroupDetails: json['version_group_details'] == null
            ? null
            : List<VersionGroupDetailModel>.from(json['version_group_details']
                .map((x) => VersionGroupDetailModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'move': move == null ? null : move!.toJson(),
        'version_group_details': versionGroupDetails == null
            ? null
            : List<dynamic>.from(versionGroupDetails!.map((x) => x.toJson())),
      };
}
