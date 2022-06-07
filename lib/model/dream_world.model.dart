class DreamWorldModel {
  DreamWorldModel({
    this.frontDefault,
    this.frontFemale,
  });

  final String? frontDefault;
  final dynamic frontFemale;

  factory DreamWorldModel.fromJson(Map<String, dynamic> json) => DreamWorldModel(
    frontDefault: json['front_default'],
    frontFemale: json['front_female'],
  );

  Map<String, dynamic> toJson() => {
    'front_default': frontDefault,
    'front_female': frontFemale,
  };
}
