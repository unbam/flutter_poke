import 'package:flutter/foundation.dart';

import 'constant.dart';

///
/// 共通
///
class Util {
  ///
  /// デバッグ出力
  /// [place] 記述場所
  /// [event] イベント名
  /// [value] 出力値
  ///
  static void appDebugPrint({
    String place = '',
    String event = '',
    String value = '',
  }) {
    if (kDebugMode) {
      debugPrint(
          '[${DateTime.now()}][${Constant.appName}][$place][$event]: $value');
    }
  }
}
