import 'package:pokedex_flutter/model/dream_world.model.dart';
import 'package:pokedex_flutter/model/official_artwork.model.dart';

class OtherModel {
  OtherModel({
    this.dreamWorld,
    this.officialArtwork,
  });

  final DreamWorldModel? dreamWorld;
  final OfficialArtworkModel? officialArtwork;

  factory OtherModel.fromJson(Map<String, dynamic> json) => OtherModel(
        dreamWorld: json['dream_world'] == null
            ? null
            : DreamWorldModel.fromJson(json['dream_world']),
        officialArtwork: json['official-artwork'] == null
            ? null
            : OfficialArtworkModel.fromJson(json['official-artwork']),
      );

  Map<String, dynamic> toJson() => {
        'dream_world': dreamWorld == null ? null : dreamWorld!.toJson(),
        'official-artwork':
            officialArtwork == null ? null : officialArtwork!.toJson(),
      };
}
