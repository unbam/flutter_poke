import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../util/util.dart';
import '../components/loading_monster_ball.dart';
import '../style.dart';
import '../view_models/pokemon_detail_view_model.dart';
import '../view_models/pokemon_name_view_model.dart';

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

    // ポケモン詳細の取得
    final snapshot = useFuture(useMemoized(() {
      return ref.read(pokemonDetailViewModelProvider).fetch(url: url);
    }, [url]));

    if (snapshot.connectionState == ConnectionState.waiting) {
      return Scaffold(
        backgroundColor: Style.teal,
        body: Stack(children: [
          Positioned(
            right: -20,
            child: LoadingMonsterBall(LoadingColorType.white),
          ),
        ]),
      );
    }

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
                    final pokemon = ref.read(pokemonDetailViewModelProvider);

                    final name = ref
                        .read(pokemonNameViewModelProvider)
                        .getJapaneseName(englishName: pokemon.name);

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
                                  name,
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
                          _status(pokemon),
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
  /// ステータス
  /// [pokemon] ポケモン詳細ビューモデル
  ///
  Widget _status(PokemonDetailViewModel pokemon) {
    return HookBuilder(
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
          decoration: BoxDecoration(
            color: Style.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          height: _statusContainerSize(MediaQuery.of(context).size.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _statusItem('HP: ${pokemon.hp}'),
                      _statusItem('こうげき: ${pokemon.attack}'),
                      _statusItem('しゅび: ${pokemon.defense}'),
                      _statusItem('とくこう: ${pokemon.specialAttack}'),
                      _statusItem('とくぼう: ${pokemon.specialDefense}'),
                      _statusItem('すばやさ: ${pokemon.speed}'),
                      _movesButton(pokemon.moves),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  ///
  /// おぼえるわざボタン
  /// [moves] おぼえるわざリスト
  ///
  Widget _movesButton(List<String> moves) {
    return HookBuilder(
      builder: (BuildContext context) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              Util.appDebugPrint(
                  place: runtimeType.toString(),
                  event: 'onPressed',
                  value: 'moves');
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(32.0)),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: _statusContainerSize(
                        MediaQuery.of(context).size.height),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return _statusItem(moves[index]);
                      },
                      itemCount: moves.length,
                    ),
                  );
                },
                isScrollControlled: true,
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Text(
                'おぼえるわざ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Style.white,
                ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              elevation: MaterialStateProperty.all(2.0),
              backgroundColor: MaterialStateProperty.all(Style.blueGray),
            ),
          ),
        );
      },
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
  /// ステータスコンテナサイズ
  /// [deviceHeight] デバイスの高さ
  ///
  double _statusContainerSize(double deviceHeight) {
    double statusContainerSize = 0;
    // Super Retina XDR
    if (deviceHeight > 812) {
      statusContainerSize = deviceHeight * 0.6;
    } else {
      statusContainerSize = deviceHeight * 0.5;
    }

    return statusContainerSize;
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
