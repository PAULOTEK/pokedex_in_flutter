import 'dart:convert';

PokemonListModel pokemonListModelFromJson(String str) =>
    PokemonListModel.fromJson(json.decode(str));

String pokemonListModelToJson(PokemonListModel data) =>
    json.encode(data.toJson());

class PokemonListModel {
  PokemonListModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  final int? count;
  final String? next;
  final dynamic previous;
  final List<Result>? results;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      PokemonListModel(
        count: json['count'],
        next: json['next'],
        previous: json['previous'],
        results: json['results'] == null
            ? null
            : List<Result>.from(json['results'].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results == null
            ? null
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.name,
    this.url,
  });

  final String? name;
  final String? url;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json['name'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
