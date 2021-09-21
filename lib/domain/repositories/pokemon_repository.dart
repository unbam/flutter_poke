import '../../data/models/pokemon.dart';
import '../../data/models/pokemons.dart';

///
/// ポケモンリポジトリ
///
abstract class PokemonRepository {
  ///
  /// ポケモン一覧の取得
  /// [limit] リミット
  /// [offset] オフセット
  ///
  Future<Pokemons> getPokemons({required int limit, required int offset});

  ///
  /// ポケモン詳細の取得
  /// [url] 詳細取得URL
  ///
  Future<Pokemon> getPokemon({required String url});
}
