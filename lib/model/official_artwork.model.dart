class OfficialArtworkModel {
  OfficialArtworkModel({
    this.frontDefault,
  });

  final String? frontDefault;

  factory OfficialArtworkModel.fromJson(Map<String, dynamic> json) =>
      OfficialArtworkModel(
        frontDefault: json['front_default'],
      );

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
      };
}
