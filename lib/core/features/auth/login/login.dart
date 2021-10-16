import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/routes/routes.dart';
import 'package:soga_hostal/core/ui/widgets/appbar.dart';

import 'package:soga_hostal/core/ui/widgets/textfield_widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: size.height,
      // color: Colors.red,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBard(
              text: 'Bienvenido a Soga',
            ),
            Header(size: size),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                    color: Color(0xff2A5D63),
                    child: Text('Inicio Sesión'),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HOME);
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nuevo usuario',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Color(0xff2A5D63)),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text('Registrarse'),
                          onPressed: () {
                            Navigator.pushNamed(context, REGISTER);
                          })
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16 / 12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(
                      text: 'Phone',
                      keyboardType: TextInputType.number,
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(
                      text: 'Password',
                      oscureText: true,
                      icon: true,
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CupertinoButton(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xff2A5D63)),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BezierClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    final p0 = Offset(0, size.height * 0.773);
    final p1 = Offset(size.width / 2, size.height * 1.08);
    final p2 = Offset(size.width, size.height * 0.825);
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
