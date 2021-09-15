import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'presentation/providers/build_provider.dart';
import 'util/type/build_type.dart';
import 'util/util.dart';

void main() {
  // 環境変数からビルド種別を取得
  final buildType = EnumToString.fromString(
    BuildType.values,
    const String.fromEnvironment('DEF_BUILD_ENV'),
  );

  Util.appDebugPrint(
    place: 'main',
    event: 'main',
    value: 'BuildType: ${buildType.toString()}',
  );

  runApp(
    ProviderScope(
      overrides: [
        buildProvider.overrideWithValue(buildType!),
      ],
      child: App(),
    ),
  );
}
