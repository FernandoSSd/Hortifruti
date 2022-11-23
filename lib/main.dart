import 'package:dev_series/pages/categorylistpage.dart';
import 'package:dev_series/pages/welcome_page.dart';
import 'package:flutter/material.dart';

import 'pages/splashpage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Releway'),
    debugShowCheckedModeBanner: false,
    home: CategoryListPage(
        // duration: 3,
        // goToPage: const HomePage(),
        ),
  ));
}
