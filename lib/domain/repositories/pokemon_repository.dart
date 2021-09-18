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
}
