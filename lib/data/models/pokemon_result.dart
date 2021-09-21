import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_result.freezed.dart';
part 'pokemon_result.g.dart';

///
/// PokemonResult
///
@freezed
abstract class PokemonResult with _$PokemonResult {
  factory PokemonResult({
    required String name,
    required String url,
  }) = _PokemonResult;

  factory PokemonResult.fromJson(Map<String, dynamic> json) =>
      _$PokemonResultFromJson(json);
}
