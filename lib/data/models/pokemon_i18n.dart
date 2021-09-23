import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_i18n.freezed.dart';
part 'pokemon_i18n.g.dart';

///
/// PokemonI18n
///
@freezed
abstract class PokemonI18n with _$PokemonI18n {
  factory PokemonI18n({
    /// 日本語名
    required String ja,

    /// 英語名
    required String en,
  }) = _PokemonI18n;

  factory PokemonI18n.fromJson(Map<String, dynamic> json) =>
      _$PokemonI18nFromJson(json);
}
