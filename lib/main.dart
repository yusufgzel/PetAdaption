import 'package:flutter/material.dart';
import 'package:pati/WelcomeScreens/home_screen.dart';
import 'package:pati/WelcomeScreens/welcome.dart';

import 'Anasayfa/anasayfa.dart';
import 'HexColor.dart';
import 'WelcomeScreens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      home:Home()
    );
  }
}
