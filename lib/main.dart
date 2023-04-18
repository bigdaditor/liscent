import 'package:flutter/material.dart';
import 'package:liscent/screens/guide/guide_screen.dart';
import 'package:liscent/screens/info/info_screen.dart';
import 'package:liscent/screens/nearby/nearby_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/tos/tos_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/worklist/worklist_screen.dart';
import 'screens/likedisplay/likedisplay_screen.dart';
import 'screens/rank/rank_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: Rank(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/tos': (context) => const Tos(),
        '/home': (context) => const Home(),
        '/info': (context) => const Info(),
        '/guide': (context) => const Guide(),
        '/worklist': (context) => const Worklist(),
        '/likedisplay': (context) => const Likedisplay(),
        '/nearby': (context) => const NearbyScreen()
      },
    );
  }
}
