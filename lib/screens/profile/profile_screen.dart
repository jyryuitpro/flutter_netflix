import 'package:flutter/material.dart';
import 'package:flutter_netflix/constants.dart';
import 'package:flutter_netflix/screens/profile/components/add_card.dart';
import 'package:flutter_netflix/screens/profile/components/profile_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'MODU PLAY',
          style: kTitleTextStyle,
        ),
        actions: [
          Icon(
            FontAwesomeIcons.pen,
            size: 18.0,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '모두의 플레이를 시청할 프로필을 선택하세요.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Wrap(
                spacing: 25.0,
                children: [
                  ProfileCard(),
                  AddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
