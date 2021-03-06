import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/pokemon_result.dart';
import '../../util/util.dart';
import '../components/loading_monster_ball.dart';
import '../style.dart';
import '../view_models/pokemon_list_view_model.dart';
import '../view_models/pokemon_name_view_model.dart';
import 'pokemon_detail_page.dart';

///
/// ポケモンリストページ
///
class PokemonListPage extends HookConsumerWidget {
  ///
  /// ページルート
  ///
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => PokemonListPage(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = useFuture(useMemoized(() {
      return ref
          .watch(pokemonListViewModelProvider.notifier)
          .fetch(limit: 100, offset: 0);
    }));

    if (snapshot.connectionState == ConnectionState.waiting) {
      return Scaffold(
        backgroundColor: Style.white,
        body: Stack(
          children: [
            Positioned(
              right: -20,
              child: LoadingMonsterBall(LoadingColorType.gray),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Style.white,
      body: Stack(
        children: [
          Positioned(
            right: -20,
            child: SvgPicture.asset(
              'assets/images/MonsterBall_gray.svg',
              width: 160.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16.0, top: 68.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  'Pokemon',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 24),
                ),
                // List
                HookBuilder(
                  builder: (context) {
                    final pokemons = ref.watch(pokemonListViewModelProvider)
                        as List<PokemonResult>;

                    return Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // ページング(日本語表記が721までなのでそれ以上は表示しない)
                          if (index > 720) {
                            return SizedBox.shrink();
                          } else if (index >= pokemons.length - 1) {
                            Util.appDebugPrint(
                                place: runtimeType.toString(),
                                event: 'ListView.builder',
                                value: pokemons.length.toString());
                            Future(() => ref
                                .watch(pokemonListViewModelProvider.notifier)
                                .fetch(limit: 100, offset: pokemons.length));
                          }

                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: _pokemonItem(pokemons[index], index),
                          );
                        },
                        itemCount: pokemons.length,
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
  /// リストアイテムウィジェット
  /// [pokemon] ポケモン結果情報
  /// [index] インデックス
  ///
  Widget _pokemonItem(PokemonResult pokemon, int index) {
    return HookConsumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final name = ref
            .read(pokemonNameViewModelProvider)
            .getJapaneseName(englishName: pokemon.name);

        return GestureDetector(
          onTap: () {
            Util.appDebugPrint(
                place: runtimeType.toString(),
                event: '_pokemonItem: onTap',
                value: 'name: ${pokemon.name}, index: $index');

            // 詳細画面に遷移
            Navigator.of(context)
                .push(PokemonDetailPage.route(url: pokemon.url));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Style.blueGray,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Style.listItemTextStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '#${(index + 1).toString()}',
                    style: Style.listItemTextStyle,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
