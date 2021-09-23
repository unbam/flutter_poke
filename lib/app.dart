import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/pages/pokemon_list_page.dart';
import 'presentation/pages/splash_screen_page.dart';
import 'presentation/view_models/pokemon_name_view_model.dart';
import 'util/constant.dart';

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: Constant.appName,
      home: Root(),
      debugShowCheckedModeBanner: false,
    );
  }
}

///
/// ルート
///
class Root extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期処理
    final snapshot = useFuture(
      useMemoized(
        () async {
          // ポケモン名リストの読み込み
          await ref.read(pokemonNameViewModelProvider).loadNameList();
          await Future.delayed(
            Duration(milliseconds: 3000),
          );
        },
      ),
    );

    // スプラッシュスクリーン画面の表示
    if (snapshot.connectionState == ConnectionState.waiting) {
      return SplashScreenPage();
    }

    // リスト画面の表示
    return PokemonListPage();
  }
}
