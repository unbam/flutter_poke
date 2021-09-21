import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/pokemon_result.dart';
import '../../domain/usecases/pokemon_usecase.dart';
import '../providers/pokemon_provider.dart';

///
/// pokemonListViewModelProvider
///
final pokemonListViewModelProvider = StateNotifierProvider(
  (ref) => PokemonListViewModel(
    ref.read(pokemonProvider),
  ),
);

///
/// ポケモンリストビューモデル
///
class PokemonListViewModel extends StateNotifier<List<PokemonResult>> {
  PokemonListViewModel(this._useCase) : super([]);

  /// ユースケース
  final PokemonUseCase _useCase;

  /// ポケモンリスト
  List<PokemonResult>? get pokemons => state;

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

      state = [...state, ...value.results];
    });
  }
}
