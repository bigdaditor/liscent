import 'package:flutter/material.dart';
import 'screens/login/login_screen.dart';
import 'screens/tos/tos_screen.dart';
import 'screens/home/home_screen.dart';


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
      home: const Login(),
      routes: {
        '/login': (context) => const Login(),
        '/tos': (context) => const Tos(),
        '/home': (context) => const Home(),
      },
    );
  }
}
