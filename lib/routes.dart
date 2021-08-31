import 'package:flutter/material.dart';
import 'package:flutter_netflix/screens/profile/profile_screen.dart';
import 'package:flutter_netflix/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
