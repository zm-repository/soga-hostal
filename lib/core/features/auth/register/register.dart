import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/auth/login/login.dart';
import 'package:soga_hostal/core/routes/routes.dart';
import 'package:soga_hostal/core/ui/widgets/appbar.dart';

import 'package:soga_hostal/core/ui/widgets/textfield_widgets.dart';

class RegisterPage extends StatelessWidget {
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
              text: "Crea una nueva cuenta",
            ),
            Header(size: size),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                    color: Color(0xff2A5D63),
                    child: Text('Registrarse'),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {}),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ya tienes cuenta',
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
                          child: Text('Iniciar Sesion'),
                          onPressed: () {
                            Navigator.pushNamed(context, LOGIN);
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
        aspectRatio: 16 / 13,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(text: 'Name')),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(text: 'LastName')),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(
                      text: 'Phone',
                      keyboardType: TextInputType.number,
                    )),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidgets(
                      text: 'Password',
                      oscureText: true,
                      icon: true,
                    )),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
