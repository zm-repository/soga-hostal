import 'package:flutter/material.dart';

class BezierClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    final p0 = Offset(0, size.height * 0.8);
    final p1 = Offset(size.width / 2, size.height * 1.08);
    final p2 = Offset(size.width, size.height * 0.8);
    path.lineTo(p0.dx, p0.dy);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
