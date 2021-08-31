import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  static String routeName = '/main_screens';

  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MainScreens'),
      ),
    );
  }
}
