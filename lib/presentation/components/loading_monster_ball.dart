import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// ローディング色種別
///
enum LoadingColorType {
  /// グレー
  gray,

  /// ホワイト
  white,
}

///
/// ローディングアニメーション
///
class LoadingMonsterBall extends StatefulWidget {
  LoadingMonsterBall(this.loadingColor);

  /// ローディング色種別
  final LoadingColorType loadingColor;

  @override
  _LoadingMonsterBallState createState() => _LoadingMonsterBallState();
}

class _LoadingMonsterBallState extends State<LoadingMonsterBall>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // アニメーション秒数
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: animationController.value * 6.3,
            child: child,
          );
        },
        child: Container(
          child: SvgPicture.asset(
            widget.loadingColor == LoadingColorType.gray
                ? 'assets/images/MonsterBall_gray.svg'
                : 'assets/images/MonsterBall_white.svg',
            width: 160.0,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
