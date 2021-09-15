import 'package:dio/dio.dart';

///
/// PokemonDataSourceクラス
///
abstract class PokemonDataSource {
  ///
  /// ポケモン一覧の取得
  /// [limit]
  /// [offset] オフセット
  ///
  Future<Map<String, dynamic>> getPokemons(
      {required int limit, required int offset});
}

///
/// PokemonDataSource実装クラス
///
class PokemonDataSourceImpl extends PokemonDataSource {
  PokemonDataSourceImpl({required Dio dio}) : _dio = dio;

  /// HttpClient
  final Dio _dio;

  @override
  Future<Map<String, dynamic>> getPokemons(
      {required int limit, required int offset}) {
    // TODO: implement getPokemons
    throw UnimplementedError();
  }
}
