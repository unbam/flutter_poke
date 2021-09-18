import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/remotes/pokemon_data_source.dart';

///
/// ポケモンリポジトリ実装クラス
///
class PokemonRepositoryImpl extends PokemonRepository {
  PokemonRepositoryImpl({required PokemonDataSource dataSource})
      : _dataSource = dataSource;

  /// データソース
  final PokemonDataSource _dataSource;

  @override
  Future<Map<String, dynamic>> getPokemons(
      {required int limit, required int offset}) {
    return _dataSource.getPokemons(limit: limit, offset: offset);
  }
}
