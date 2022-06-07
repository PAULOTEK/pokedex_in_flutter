import 'package:pokedex_flutter/model/cristal.model.dart';
import 'package:pokedex_flutter/model/emerald.model.dart';

class GenerationIiiModel {
  GenerationIiiModel({
    this.emerald,
    this.fireredLeafgreen,
    this.rubySapphire,
  });

  final EmeraldModel? emerald;
  final CrystalModel? fireredLeafgreen;
  final CrystalModel? rubySapphire;

  factory GenerationIiiModel.fromJson(Map<String, dynamic> json) =>
      GenerationIiiModel(
        emerald: json['emerald'] == null
            ? null
            : EmeraldModel.fromJson(json['emerald']),
        fireredLeafgreen: json['firered-leafgreen'] == null
            ? null
            : CrystalModel.fromJson(json['firered-leafgreen']),
        rubySapphire: json['ruby-sapphire'] == null
            ? null
            : CrystalModel.fromJson(json['ruby-sapphire']),
      );

  Map<String, dynamic> toJson() => {
        'emerald': emerald == null ? null : emerald!.toJson(),
        'firered-leafgreen':
            fireredLeafgreen == null ? null : fireredLeafgreen!.toJson(),
        'ruby-sapphire': rubySapphire == null ? null : rubySapphire!.toJson(),
      };
}
