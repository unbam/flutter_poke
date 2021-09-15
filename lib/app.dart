import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'util/constant.dart';

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: Constant.appName,
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text('Hello :)'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
