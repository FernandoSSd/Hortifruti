import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  Color color;
  double size;
  String iconName;

  IconFont(
      {super.key,
      required this.color,
      required this.size,
      required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Text(
      iconName,
      style:
          TextStyle(color: Colors.white, fontSize: size, fontFamily: 'orilla'),
    );
  }
}
