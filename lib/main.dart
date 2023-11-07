import 'package:flutter/material.dart';
import 'package:liscent/screens/common/main_layout.dart';
import 'screens/login/login_screen.dart';
import 'screens/tos/tos_screen.dart';
import 'package:liscent/screens/guide/guide_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/searchresult/search_result_screen.dart';
import 'package:liscent/screens/nearby/nearby_screen.dart';
import 'package:liscent/screens/info/info_screen.dart';
import 'screens/worklist/worklist_screen.dart';
import 'screens/play/play_screen.dart';
import 'screens/mypage/mypage_screen.dart';
import 'screens/likedisplay/likedisplay_screen.dart';
import 'screens/likework/likework_screen.dart';
import 'screens/likedocent/likedocent_screen.dart';
import 'screens/rank/rank_screen.dart';


// ADB Profile
// 1080 x 2400
// 6.7인치
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
      home: Home(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/tos': (context) => const Tos(),
        '/guide': (context) => const Guide(),
        '/home': (context) => const Home(),
        '/search': (context) => const Search(),
        '/search_result': (context) => const SearchResult(),
        '/nearby': (context) => const NearbyScreen(),
        '/info': (context) => Info(0),
        '/worklist': (context) => const Worklist(),
        '/paly': (context) => const Play(),
        '/mypage': (context) => const Mypage(),
        '/likedisplay': (context) => const Likedisplay(),
        '/likework': (context) => const Likework(),
        '/likedocent': (context) => const Likedocent(),
        '/rank': (context) => const Rank(),
        '/layout': (context) => MainLayout(),
      },
    );
  }
}
