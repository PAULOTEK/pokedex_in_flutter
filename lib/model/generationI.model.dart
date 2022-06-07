import 'package:pokedex_flutter/model/red_blue.model.dart';

class GenerationIModel {
  GenerationIModel({
    this.redBlue,
    this.yellow,
  });

  final RedBlueModel? redBlue;
  final RedBlueModel? yellow;

  factory GenerationIModel.fromJson(Map<String, dynamic> json) =>
      GenerationIModel(
        redBlue: json['red-blue'] == null
            ? null
            : RedBlueModel.fromJson(json['red-blue']),
        yellow: json['yellow'] == null
            ? null
            : RedBlueModel.fromJson(json['yellow']),
      );

  Map<String, dynamic> toJson() => {
        'red-blue': redBlue == null ? null : redBlue!.toJson(),
        'yellow': yellow == null ? null : yellow!.toJson(),
      };
}
