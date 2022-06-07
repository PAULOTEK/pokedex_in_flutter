import 'package:pokedex_flutter/model/cristal.model.dart';

class GenerationIiModel {
  GenerationIiModel({
    this.crystal,
    this.gold,
    this.silver,
  });

  final CrystalModel? crystal;
  final CrystalModel? gold;
  final CrystalModel? silver;

  factory GenerationIiModel.fromJson(Map<String, dynamic> json) =>
      GenerationIiModel(
        crystal: json['crystal'] == null
            ? null
            : CrystalModel.fromJson(json['crystal']),
        gold: json['gold'] == null ? null : CrystalModel.fromJson(json['gold']),
        silver: json['silver'] == null
            ? null
            : CrystalModel.fromJson(json['silver']),
      );

  Map<String, dynamic> toJson() => {
        'crystal': crystal == null ? null : crystal!.toJson(),
        'gold': gold == null ? null : gold!.toJson(),
        'silver': silver == null ? null : silver!.toJson(),
      };
}
