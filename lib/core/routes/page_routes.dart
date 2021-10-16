import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/auth/login/login.dart';
import 'package:soga_hostal/core/features/auth/register/register.dart';
import 'package:soga_hostal/core/features/details_room/details_room.dart';
import 'package:soga_hostal/core/features/home/home.dart';
import 'package:soga_hostal/core/features/splash/splash.dart';
import 'package:soga_hostal/core/routes/routes.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SPLASH: (_) => SplashPage(),
  HOME: (_) => HomePage(),
  LOGIN: (_) => LoginPage(),
  REGISTER: (_) => RegisterPage(),
  DETAILS_ROOM: (_) => DetailsRoomPage()
};
