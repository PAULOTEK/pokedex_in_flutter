class EmeraldModel {
  EmeraldModel({
    this.frontDefault,
    this.frontShiny,
  });

  final String? frontDefault;
  final String? frontShiny;

  factory EmeraldModel.fromJson(Map<String, dynamic> json) => EmeraldModel(
        frontDefault: json['front_default'],
        frontShiny: json['front_shiny'],
      );

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}
