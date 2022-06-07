import 'package:pokedex_flutter/model/generationI.model.dart';
import 'package:pokedex_flutter/model/generationIII.model.dart';
import 'package:pokedex_flutter/model/generationIi.model.dart';
import 'package:pokedex_flutter/model/generationIv.model.dart';
import 'package:pokedex_flutter/model/generationV.model.dart';
import 'package:pokedex_flutter/model/generationVI.model.dart';

import 'generationVii.model.dart';
import 'generationViii.model.dart';

class VersionsModel {
  VersionsModel({
    this.generationI,
    this.generationIi,
    this.generationIii,
    this.generationIv,
    this.generationV,
    this.generationVi,
    this.generationVii,
    this.generationViii,
  });

  final GenerationIModel? generationI;
  final GenerationIiModel? generationIi;
  final GenerationIiiModel? generationIii;
  final GenerationIvModel? generationIv;
  final GenerationVModel? generationV;
  final Map<String, GenerationViModel>? generationVi;
  final GenerationViiModel? generationVii;
  final GenerationViiiModel? generationViii;

  factory VersionsModel.fromJson(Map<String, dynamic> json) => VersionsModel(
        generationI: json['generation-i'] == null
            ? null
            : GenerationIModel.fromJson(json['generation-i']),
        generationIi: json['generation-ii'] == null
            ? null
            : GenerationIiModel.fromJson(json['generation-ii']),
        generationIii: json['generation-iii'] == null
            ? null
            : GenerationIiiModel.fromJson(json['generation-iii']),
        generationIv: json['generation-iv'] == null
            ? null
            : GenerationIvModel.fromJson(json['generation-iv']),
        generationV: json['generation-v'] == null
            ? null
            : GenerationVModel.fromJson(json['generation-v']),
        generationVi: json['generation-vi'] == null
            ? null
            : Map.from(json['generation-vi']).map((k, v) =>
                MapEntry<String, GenerationViModel>(
                    k, GenerationViModel.fromJson(v))),
        generationVii: json['generation-vii'] == null
            ? null
            : GenerationViiModel.fromJson(json['generation-vii']),
        generationViii: json['generation-viii'] == null
            ? null
            : GenerationViiiModel.fromJson(json['generation-viii']),
      );

  Map<String, dynamic> toJson() => {
        'generation-i': generationI == null ? null : generationI!.toJson(),
        'generation-ii': generationIi == null ? null : generationIi!.toJson(),
        'generation-iii':
            generationIii == null ? null : generationIii!.toJson(),
        'generation-iv': generationIv == null ? null : generationIv!.toJson(),
        'generation-v': generationV == null ? null : generationV!.toJson(),
        'generation-vi': generationVi == null
            ? null
            : Map.from(generationVi!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        'generation-vii':
            generationVii == null ? null : generationVii!.toJson(),
        'generation-viii':
            generationViii == null ? null : generationViii!.toJson(),
      };
}
