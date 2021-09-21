// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$_$_PokemonFromJson(Map<String, dynamic> json) {
  return _$_Pokemon(
    abilities: (json['abilities'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    baseExperience: json['base_experience'] as int,
    forms: (json['forms'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    gameIndices: (json['game_indices'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    height: json['height'] as int,
    heldItems: (json['held_items'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    id: json['id'] as int,
    isDefault: json['is_default'] as bool,
    locationAreaEncounters: json['location_area_encounters'] as String,
    moves: (json['moves'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    name: json['name'] as String,
    order: json['order'] as int,
    pastTypes: (json['past_types'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    species: json['species'] as Map<String, dynamic>,
    sprites: json['sprites'] as Map<String, dynamic>,
    stats: (json['stats'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    types: (json['types'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    weight: json['weight'] as int,
  );
}

Map<String, dynamic> _$_$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'past_types': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
