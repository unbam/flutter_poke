import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/datasources/remotes/pokemon_data_source.dart';
import '../../data/repositories/pokemon_repository_impl.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../../domain/usecases/pokemon_usecase.dart';
import 'dio_provider.dart';

///
/// pokemonProvider
///
final pokemonProvider = Provider<PokemonUseCase>(
  (ref) => PokemonUseCase(
    ref.read(_pokemonRepositoryProvider),
  ),
);

final _pokemonRepositoryProvider = Provider<PokemonRepository>(
  (ref) => PokemonRepositoryImpl(
    dataSource: ref.read(_pokemonDataSourceProvider),
  ),
);

final _pokemonDataSourceProvider = Provider<PokemonDataSource>(
  (ref) => PokemonDataSourceImpl(
    dio: ref.read(dioProvider),
  ),
);
