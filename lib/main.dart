import 'package:flutter/material.dart';

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
          primarySwatch: Colors.blue,
        ),
        home: Login());
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 233,
            height: 43,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/logo.png'),
            )),
          ),
          SizedBox(
            height: 240,
          ),
          Container(
            width: 274,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFEE500),
                      minimumSize: Size.fromHeight(50),
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Image.asset('assets/icon_Kakao.png'),
                      ),
                      Text('Kakao 아이디로 로그인',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFFFFFF),
                      minimumSize: Size.fromHeight(50),
                      elevation: 3,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Image.asset('assets/icon_Google.png'),
                      ),
                      Text('Google 아이디로 로그인',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff06C755),
                      minimumSize: Size.fromHeight(50),
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Image.asset('assets/icon_Naver.png'),
                      ),
                      Text('NAVER 아이디로 로그인',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '로그인에 문제가 있으신가요?',
                      style: TextStyle(
                          color: Color.fromRGBO(44, 67, 155, 0.8),
                          fontSize: 12),
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
