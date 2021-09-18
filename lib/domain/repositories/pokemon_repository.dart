///
/// ポケモンリポジトリ
///
abstract class PokemonRepository {
  ///
  /// ポケモン一覧の取得
  /// [limit] リミット
  /// [offset] オフセット
  ///
  Future<Map<String, dynamic>> getPokemons(
      {required int limit, required int offset});
}
