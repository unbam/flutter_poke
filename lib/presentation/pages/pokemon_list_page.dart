import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_poke/data/models/pokemons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../style.dart';
import '../view_models/pokemon_list_view_model.dart';

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
    return Scaffold(
      backgroundColor: Style.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -20,
              child: SvgPicture.asset(
                'assets/images/MonsterBall_gray.svg',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Text(
                    'Pockemon',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ),
                // List
                HookBuilder(
                  builder: (context) {
                    final snapshot = useFuture(useMemoized(() {
                      return ref
                          .watch(pokemonListViewModelProvider)
                          .fetch(limit: 100, offset: 0);
                    }));

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final pokemons =
                        ref.watch(pokemonListViewModelProvider).pokemons!;

                    return Expanded(
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return _pokemonItem(pokemons, index);
                          },
                          itemCount: pokemons.results.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// リストアイテムウィジェット
  /// [pokemons] ポケモンリスト
  /// [index] インデックス
  ///
  Widget _pokemonItem(Pokemons pokemons, int index) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 0,
        right: 16.0,
        bottom: 16.0,
      ),
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
                pokemons.results[index].name,
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
  }
}
