import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/remotes/pokemon_data_source.dart';
import '../models/pokemons.dart';

///
/// ポケモンリポジトリ実装クラス
///
class PokemonRepositoryImpl extends PokemonRepository {
  PokemonRepositoryImpl({required PokemonDataSource dataSource})
      : _dataSource = dataSource;

  /// データソース
  final PokemonDataSource _dataSource;

  @override
  Future<Pokemons> getPokemons({required int limit, required int offset}) {
    return _dataSource.getPokemons(limit: limit, offset: offset);
  }
}
