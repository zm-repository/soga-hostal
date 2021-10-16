import 'package:flutter/material.dart';

import 'package:soga_hostal/core/routes/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 5), () {
        // 5 seconds over, navigate to Page2.
        Navigator.pushReplacementNamed(context, LOGIN);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo_size.jpg'),
      ),
    );
  }
}
