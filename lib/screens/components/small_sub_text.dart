import 'package:flutter/material.dart';

class SmallSubText extends StatelessWidget {
  final String text;

  const SmallSubText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 12.0,
      ),
    );
  }
}
