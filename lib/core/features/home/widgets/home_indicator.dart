import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:soga_hostal/core/utils/colors.dart';

class HomeTabBarIncator extends Decoration {
  final Color color;
  final double size;

  HomeTabBarIncator({this.color = primaryColor, this.size = 3});
  @override
  BoxPainter createBoxPainter([void Function()? onChanged]) {
    return _CustomPainter(color: color, size: size);
  }
}

class _CustomPainter extends BoxPainter {
  final Color? color;
  final double? size;

  _CustomPainter({this.color, this.size});
  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration configuration,
  ) {
    final Paint paint = Paint();
    paint.color = color!;
    final width = configuration.size!.width;
    final heigth = configuration.size!.height;
    final Offset position =
        Offset(offset.dx + width / 2, offset.dy + heigth - 10);
    canvas.drawCircle(position, size! / 2, paint);
  }
}
