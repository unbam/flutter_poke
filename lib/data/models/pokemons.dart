import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon_result.dart';

part 'pokemons.freezed.dart';
part 'pokemons.g.dart';

///
/// Pokemons
///
@freezed
abstract class Pokemons with _$Pokemons {
  factory Pokemons({
    required int count,
    String? next,
    String? previous,
    required List<PokemonResult> results,
  }) = _Pokemons;

  factory Pokemons.fromJson(Map<String, dynamic> json) =>
      _$PokemonsFromJson(json);
}
