import '../repositories/pokemon_repository.dart';
import 'usecase.dart';

///
/// ポケモンユースケース
///
class PokemonUseCase extends UseCase<PokemonRepository> {
  PokemonUseCase(repository) {
    this.repository = repository;
  }

  ///
  /// ポケモン一覧の取得
  /// [limit] リミット
  /// [offset] オフセット
  ///
  Future<Map<String, dynamic>> fetchPokemons(
      {required int limit, required int offset}) {
    return repository.getPokemons(limit: limit, offset: offset);
  }
}
