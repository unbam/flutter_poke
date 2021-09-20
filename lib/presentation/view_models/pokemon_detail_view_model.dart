import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/usecases/pokemon_usecase.dart';
import '../providers/pokemon_provider.dart';

///
/// pokemonListViewModelProvider
///
final pokemonDetailViewModelProvider = Provider(
  (ref) => PokemonDetailViewModel(
    ref.read(pokemonProvider),
  ),
);

///
/// ポケモン詳細ビューモデル
///
class PokemonDetailViewModel {
  PokemonDetailViewModel(this._useCase);

  /// ユースケース
  final PokemonUseCase _useCase;

  /// 名前
  late String _id;
  String get id => _id;

  /// 名前
  late String _name;
  String get name => _name;

  /// アイコンURL
  late String _iconUrl;
  String get iconUrl => _iconUrl;

  /// たかさ
  late String _height;
  String get height => _height;

  /// おもさ
  late String _weight;
  String get weight => _weight;

  /// HP
  late String _hp;
  String get hp => _hp;

  /// こうげき
  late String _attack;
  String get attack => _attack;

  /// しゅび
  late String _defense;
  String get defense => _defense;

  /// とくこう
  late String _specialAttack;
  String get specialAttack => _specialAttack;

  /// とくぼう
  late String _specialDefense;
  String get specialDefense => _specialDefense;

  /// すばやさ
  late String _speed;
  String get speed => _speed;

  /// タイプ
  late List<String> _types;
  List<String> get types => _types;

  ///
  /// ポケモン詳細取得
  /// [url] 詳細URL
  ///
  Future<void> fetch({required String url}) async {
    return _useCase.fetchPokemon(url: url).then((value) {
      _name =
          value.name[0].toUpperCase() + value.name.substring(1).toLowerCase();
      _id = '#${value.id.toString().padLeft(3, '0')}';
      _iconUrl = value.sprites['versions']['generation-vii']
          ['ultra-sun-ultra-moon']['front_default'];
      _height = (value.height * 10).toStringAsFixed(1);
      _weight = (value.weight * 0.1).toStringAsFixed(1);
      _hp = value.stats[0]['base_stat'].toString();
      _attack = value.stats[1]['base_stat'].toString();
      _defense = value.stats[2]['base_stat'].toString();
      _specialAttack = value.stats[3]['base_stat'].toString();
      _specialDefense = value.stats[4]['base_stat'].toString();
      _speed = value.stats[5]['base_stat'].toString();
      _types = value.types.map((e) => e['type']['name'] as String).toList();
    });
  }
}
