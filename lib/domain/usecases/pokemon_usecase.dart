import '../../../data/models/pokemon.dart';
import '../../../data/models/pokemons.dart';
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
  Future<Pokemons> fetchPokemons({required int limit, required int offset}) {
    return repository.getPokemons(limit: limit, offset: offset);
  }

  ///
  /// ポケモン詳細の取得
  /// [url] 詳細取得URL
  ///
  Future<Pokemon> fetchPokemon({required String url}) {
    return repository.getPokemon(url: url);
  }
}
