import 'package:flutter/material.dart';
import 'package:flutter_netflix/routes.dart';
import 'package:flutter_netflix/screens/splash/splash_screen.dart';
import 'package:flutter_netflix/theme.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
