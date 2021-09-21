import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../../../util/constant.dart';
import '../../../util/util.dart';

///
/// PokemonDio
///
class PokemonDio with DioMixin implements Dio {
  PokemonDio._() {
    options = BaseOptions(
      baseUrl: 'https://pokeapi.co',
      contentType: 'application/json',
      connectTimeout: Constant.timeoutMilliseconds,
      sendTimeout: Constant.timeoutMilliseconds,
      receiveTimeout: Constant.timeoutMilliseconds,
    );

    // 出力過多のためコメントアウト
    // if (kDebugMode) {
    //   interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    // }

    httpClientAdapter = DefaultHttpClientAdapter();
    (httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (cert, host, port) {
        Util.appDebugPrint(
          place: 'PokemonDio',
          event: 'badCertificateCallback',
          value: 'endValidity: ${cert.endValidity.toString()}',
        );
        return false;
      };
    };
  }

  /// インスタンス
  static Dio getInstance() => PokemonDio._();
}
