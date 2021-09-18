import 'package:dio/dio.dart';

import '../../../../util/util.dart';
import '../../models/pokemons.dart';

///
/// PokemonDataSourceクラス
///
abstract class PokemonDataSource {
  ///
  /// ポケモン一覧の取得
  /// [limit] リミット
  /// [offset] オフセット
  ///
  Future<Pokemons> getPokemons({required int limit, required int offset});
}

///
/// PokemonDataSource実装クラス
///
class PokemonDataSourceImpl extends PokemonDataSource {
  PokemonDataSourceImpl({required Dio dio}) : _dio = dio;

  /// HttpClient
  final Dio _dio;

  @override
  Future<Pokemons> getPokemons({required int limit, required int offset}) {
    Util.appDebugPrint(
        place: 'PokemonDataSourceImpl',
        event: 'getPokemons',
        value: 'limit: $limit, offset: $offset');

    return _dio.get<Map<String, dynamic>>(
      '/api/v2/pokemon',
      queryParameters: <String, String>{
        'limit': limit.toString(),
        'offset': offset.toString(),
      },
    ).then((response) => Pokemons.fromJson(response.data!));
  }
}
