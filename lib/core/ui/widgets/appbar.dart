import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/auth/login/login.dart';
import 'package:soga_hostal/core/ui/widgets/bezier_clipper.dart';

class AppBard extends StatelessWidget {
  const AppBard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: AspectRatio(
            aspectRatio: 12 / 10,
            child: ClipPath(
              clipper: BezierClipper2(),
              child: Container(
                width: double.infinity,
                height: 300,
                color: Color(0xff2A5D63).withOpacity(0.5),
              ),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 12 / 10,
          child: ClipPath(
            clipper: BezierClipper(),
            child: Container(
              width: double.infinity,
              height: 300,
              color: Color(0xff2A5D63),
            ),
          ),
        ),
        Positioned(
            right: -50,
            top: -70,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            )),
        Positioned(
            right: 10,
            top: -20,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff2A5D63),
              ),
            )),
        Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )))
      ],
    );
  }
}
