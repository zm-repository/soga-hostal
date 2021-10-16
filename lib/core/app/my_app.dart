import 'package:flutter/material.dart';
import 'package:soga_hostal/core/routes/page_routes.dart';
import 'package:soga_hostal/core/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: SPLASH,
      routes: appRoutes,
    );
  }
}
