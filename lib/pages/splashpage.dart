import 'package:flutter/material.dart';

import '../helpers/iconhelper.dart';
import '../widgets/iconfotn.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({super.key, required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
      body: Container(
        color: const Color(0xFF80C038),
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}
