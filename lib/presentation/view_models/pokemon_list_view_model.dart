import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/pokemons.dart';
import '../../../domain/usecases/pokemon_usecase.dart';
import '../providers/pokemon_provider.dart';

///
/// pokemonListViewModelProvider
///
final pokemonListViewModelProvider = Provider(
  (ref) => PokemonListViewModel(
    ref.read(pokemonProvider),
  ),
);

///
/// ポケモンリストビューモデル
///
class PokemonListViewModel {
  PokemonListViewModel(this._useCase);

  /// ユースケース
  final PokemonUseCase _useCase;

  /// ポケモンリスト
  Pokemons? _pokemons;

  Pokemons? get pokemons => _pokemons;

  ///
  /// ポケモンリスト取得
  /// [limit] リミット
  /// [offset] オフセット
  ///
  Future<void> fetch({required int limit, required int offset}) async {
    return _useCase.fetchPokemons(limit: limit, offset: offset).then((value) {
      for (var i = 0; i < value.results.length; i++) {
        // 先頭1文字を大文字に変換
        value.results[i] = value.results[i].copyWith(
            name: value.results[i].name[0].toUpperCase() +
                value.results[i].name.substring(1).toLowerCase());
      }
      _pokemons = value;
    });
  }
}
