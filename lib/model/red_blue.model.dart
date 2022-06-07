class RedBlueModel {
  RedBlueModel({
    this.backDefault,
    this.backGray,
    this.frontDefault,
    this.frontGray,
  });

  final String? backDefault;
  final String? backGray;
  final String? frontDefault;
  final String? frontGray;

  factory RedBlueModel.fromJson(Map<String, dynamic> json) => RedBlueModel(
        backDefault: json['back_default'],
        backGray: json['back_gray'],
        frontDefault: json['front_default'],
        frontGray: json['front_gray'],
      );

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_gray': backGray,
        'front_default': frontDefault,
        'front_gray': frontGray,
      };
}
