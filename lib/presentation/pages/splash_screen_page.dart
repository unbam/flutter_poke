import 'package:flutter/material.dart';

import '../style.dart';

///
/// スプラッシュスクリーンページ
///
class SplashScreenPage extends StatelessWidget {
  ///
  /// ページルート
  ///
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => SplashScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Style.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/icon.png',
            width: 100,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Flutter Poke',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Pokemon',
              color: Style.pockemon,
            ),
          ),
        ],
      ),
    );
  }
}
