import 'package:flutter/material.dart';
import 'package:liscent/screens/common/main_layout.dart';
import 'package:liscent/screens/guide/guide_screen.dart';
import 'package:liscent/screens/info/info_screen.dart';
import 'package:liscent/screens/nearby/nearby_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/tos/tos_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/worklist/worklist_screen.dart';
import 'screens/likedisplay/likedisplay_screen.dart';
import 'screens/rank/rank_screen.dart';
import 'screens/play/play_screen.dart';
import 'screens/mypage/mypage_screen.dart';
import 'screens/search/search_screen.dart';

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
      home: Play(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/tos': (context) => const Tos(),
        '/home': (context) => const Home(),
        '/info': (context) => const Info(),
        '/guide': (context) => const Guide(),
        '/worklist': (context) => const Worklist(),
        '/likedisplay': (context) => const Likedisplay(),
        '/nearby': (context) => const NearbyScreen(),
        '/rank': (context) => const Rank(),
        '/paly': (context) => const Play(),
        '/mypage': (context) => const Mypage(),
        '/search': (context) => const Search(),
        '/layout': (context) => MainLayout(),
      },
    );
  }
}
