import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../style.dart';
import '../view_models/pokemon_detail_view_model.dart';

///
/// ポケモン詳細ページ
///
class PokemonDetailPage extends HookConsumerWidget {
  ///
  /// ページルート
  /// [url] ポケモン詳細取得URL
  ///
  static Route route({required String url}) {
    return MaterialPageRoute(
      builder: (_) => PokemonDetailPage(),
      settings: RouteSettings(arguments: url),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ポケモン詳細URL
    final url = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Style.teal,
      body: Stack(
        children: [
          // Background Layer
          Positioned(
            right: -20,
            child: SvgPicture.asset(
              'assets/images/MonsterBall_white.svg',
              width: 160.0,
            ),
          ),
          // Front Layer
          Container(
            margin: const EdgeInsets.only(top: 56.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Style.white,
                  ),
                ),
                // Body
                HookBuilder(
                  builder: (BuildContext context) {
                    // ポケモン詳細の取得
                    final snapshot = useFuture(useMemoized(() {
                      return ref
                          .watch(pokemonDetailViewModelProvider)
                          .fetch(url: url);
                    }, [url]));

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container();
                    }

                    final pokemon = ref.watch(pokemonDetailViewModelProvider);

                    return Expanded(
                      child: Column(
                        children: [
                          // 名前部分
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  pokemon.name,
                                  style: TextStyle(
                                    color: Style.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  pokemon.id,
                                  style: TextStyle(
                                    color: Style.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // アイコン
                          Image.network(
                            pokemon.iconUrl,
                            width: 160.0,
                            height: 160.0,
                            fit: BoxFit.fill,
                          ),
                          // タイプ
                          Wrap(
                            spacing: 10,
                            children: pokemon.types
                                .map(
                                  (e) => Chip(
                                    label: Text(e,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Style.black,
                                        )),
                                    labelPadding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    backgroundColor: _typeColor(e),
                                  ),
                                )
                                .toList(),
                          ),
                          Spacer(),
                          // ステータス部分
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              color: Style.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'たかさ: ${pokemon.height}cm',
                                        style: Style.detailItemHeaderTextStyle,
                                      ),
                                      SizedBox(
                                        width: 16.0,
                                      ),
                                      Text(
                                        'おもさ: ${pokemon.weight}kg',
                                        style: Style.detailItemHeaderTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _statusItem('HP: ${pokemon.hp}'),
                                    _statusItem('こうげき: ${pokemon.attack}'),
                                    _statusItem('しゅび: ${pokemon.defense}'),
                                    _statusItem(
                                        'とくこう: ${pokemon.specialAttack}'),
                                    _statusItem(
                                        'とくぼう: ${pokemon.specialDefense}'),
                                    _statusItem('すばやさ: ${pokemon.speed}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///
  /// ステータスアイテム
  /// [status] ステータス
  ///
  Widget _statusItem(String status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            status,
            style: Style.detailItemTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            color: Style.blueGray,
          ),
        ],
      ),
    );
  }

  ///
  /// タイプのカラー
  ///
  Color _typeColor(String type) {
    var typeColor = Style.white;
    switch (type) {
      case 'normal':
        typeColor = Style.normal;
        break;
      case 'fire':
        typeColor = Style.fire;
        break;
      case 'water':
        typeColor = Style.water;
        break;
      case 'grass':
        typeColor = Style.grass;
        break;
      case 'electric':
        typeColor = Style.electric;
        break;
      case 'ice':
        typeColor = Style.ice;
        break;
      case 'fighting':
        typeColor = Style.fighting;
        break;
      case 'poison':
        typeColor = Style.poison;
        break;
      case 'ground':
        typeColor = Style.ground;
        break;
      case 'flying':
        typeColor = Style.flying;
        break;
      case 'psychic':
        typeColor = Style.psychic;
        break;
      case 'bug':
        typeColor = Style.bug;
        break;
      case 'rock':
        typeColor = Style.rock;
        break;
      case 'ghost':
        typeColor = Style.ghost;
        break;
      case 'dragon':
        typeColor = Style.dragon;
        break;
      case 'dark':
        typeColor = Style.dark;
        break;
      case 'steel':
        typeColor = Style.steel;
        break;
      case 'fairy':
        typeColor = Style.fairy;
        break;
      default:
        break;
    }
    return typeColor;
  }
}
