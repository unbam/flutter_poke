import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/pokemon_i18n.dart';
import '../../../util/util.dart';

///
/// pokemonNameViewModelProvider
///
final pokemonNameViewModelProvider = Provider(
  (ref) => PokemonNameViewModel(),
);

///
/// ポケモン名ビューモデル
///
class PokemonNameViewModel {
  /// ポケモン名リスト
  late final List<PokemonI18n> _nameList;

  ///
  /// ポケモン名リストの読み込み
  ///
  Future<void> loadNameList() async {
    _nameList = [];
    final filePath = 'assets/jsons/pokemon.json';
    final content = jsonDecode(await rootBundle.loadString(filePath));

    for (final i18n in content) {
      _nameList.add(PokemonI18n.fromJson(i18n));
    }

    Util.appDebugPrint(
        place: runtimeType.toString(), event: 'loadNameList', value: filePath);
  }

  ///
  /// ポケモンの日本語名取得
  /// [englishName] ポケモンの英語名
  ///
  String getJapaneseName({required String englishName}) {
    // 見つからない場合は英語表記のまま返却
    if (_nameList.where((element) => element.en == englishName).isEmpty) {
      return englishName;
    } else {
      return _nameList.where((element) => element.en == englishName).single.ja;
    }
  }
}
