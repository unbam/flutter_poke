import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/pages/pokemon_list_page.dart';
import 'util/constant.dart';

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: Constant.appName,
      home: PokemonListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
