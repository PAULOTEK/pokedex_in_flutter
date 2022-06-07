class SpeciesModel {
  SpeciesModel({
    this.name,
    this.url,
  });

  final String? name;
  final String? url;

  factory SpeciesModel.fromJson(Map<String, dynamic> json) => SpeciesModel(
        name: json['name'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
