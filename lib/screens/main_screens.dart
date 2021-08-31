import 'package:flutter/material.dart';
import 'package:flutter_netflix/constants.dart';
import 'package:flutter_netflix/models/nav_item.dart';
import 'package:flutter_netflix/screens/coming/coming_screen.dart';
import 'package:flutter_netflix/screens/contents_list/contents_list_screen.dart';
import 'package:flutter_netflix/screens/home/home_screen.dart';

class MainScreens extends StatefulWidget {
  static String routeName = '/main_screens';

  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  List pages = [
    HomeScreen(),
    ComingScreen(),
    ContentsListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: kDarkColor,
        selectedFontSize: 12.0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: List.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(navItems[index].icon),
            label: navItems[index].label,
          ),
        ),
      ),
    );
  }
}
