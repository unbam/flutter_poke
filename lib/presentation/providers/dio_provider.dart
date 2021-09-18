import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/datasources/remotes/pokemon_dio.dart';

///
/// dioProvider
///
final dioProvider = Provider<Dio>((_) => PokemonDio.getInstance());
