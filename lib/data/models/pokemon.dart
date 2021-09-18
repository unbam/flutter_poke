import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

///
/// Pokemon
///
@freezed
abstract class Pokemon with _$Pokemon {
  factory Pokemon({
    required List<Map<String, dynamic>> abilities,
    @JsonKey(name: 'base_experience') required int baseExperience,
    required List<Map<String, dynamic>> forms,
    @JsonKey(name: 'game_indices')
        required List<Map<String, dynamic>> gameIndices,
    required int height,
    @JsonKey(name: 'held_items') required List<Map<String, dynamic>> heldItems,
    required int id,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'location_area_encounters')
        required String locationAreaEncounters,
    required List<Map<String, dynamic>> moves,
    required String name,
    required int order,
    @JsonKey(name: 'past_types') required List<Map<String, dynamic>> pastTypes,
    required Map<String, dynamic> species,
    required Map<String, dynamic> sprites,
    required List<Map<String, dynamic>> stats,
    required List<Map<String, dynamic>> types,
    required int weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
