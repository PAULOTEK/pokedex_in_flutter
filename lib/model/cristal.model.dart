class CrystalModel {
  CrystalModel({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;

  factory CrystalModel.fromJson(Map<String, dynamic> json) => CrystalModel(
    backDefault: json['back_default'],
    backShiny: json['back_shiny'],
    frontDefault: json['front_default'],
    frontShiny: json['front_shiny'],
  );

  Map<String, dynamic> toJson() => {
    'back_default': backDefault,
    'back_shiny': backShiny,
    'front_default': frontDefault,
    'front_shiny': frontShiny,
  };
}