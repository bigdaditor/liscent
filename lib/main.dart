import 'package:flutter/material.dart';
import 'model/PosterItem.dart';

final posterItem = {
  "list": [
    {"image": "assets/poster01.jpg", "name": "포스터01"},
    {"image": "assets/poster02.jpg", "name": "포스터02"},
    {"image": "assets/poster03.jpg", "name": "포스터03"},
    {"image": "assets/poster04.jpg", "name": "포스터04"}
  ]
};

PosterList? posterList;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    posterList = PosterList.fromJson(posterItem);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/tos': (context) => Tos(),
        '/home': (context) => Home(),
      },
    );
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
          const Flexible(
            child: FractionallySizedBox(heightFactor: 0.4),
          ),
          Container(
            width: 274,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context, '/tos');
                  },
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context, '/tos');
                  },
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context, '/tos');
                  },
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
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

class Tos extends StatefulWidget {
  const Tos({Key? key}) : super(key: key);

  @override
  State<Tos> createState() => _TosState();
}

class _TosState extends State<Tos> {
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
  bool _ischecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '환영합니다!',
                  style: TextStyle(
                      color: const Color(0xff41424A),
                      fontSize: 37,
                      fontWeight: FontWeight.w700),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'LISCENT ',
                      style: TextStyle(
                          color: const Color(0xff2C439B),
                          fontSize: 37,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: '사용을 위한',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 37,
                          fontWeight: FontWeight.w700)),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '동의',
                      style: TextStyle(
                          color: const Color(0xff2C439B),
                          fontSize: 37,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: '가 필요합니다.',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 37,
                          fontWeight: FontWeight.w700)),
                ])),
              ],
            ),
          ),
          const Flexible(
            child: FractionallySizedBox(heightFactor: 0.1),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              children: [
                CheckboxListTile(
                    title: Text('모든 약관에 동의합니다.',
                        style: TextStyle(
                            color: const Color(0xff41424A),
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    value: _ischecked1,
                    onChanged: (value) {
                      setState(() {
                        _ischecked1 = value!;
                        if (_ischecked1) {
                          _ischecked2 = value;
                          _ischecked3 = value;
                          _ischecked4 = value;
                        } else {
                          _ischecked2 = value;
                          _ischecked3 = value;
                          _ischecked4 = value;
                        }
                      });
                    },
                    activeColor: Colors.white,
                    checkColor: const Color(0xff2C439B),
                    side: MaterialStateBorderSide.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(
                            width: 1, color: const Color(0xff41424A));
                      }
                      return const BorderSide(
                          width: 1, color: const Color(0xff41424A));
                    })),
                SizedBox(
                  height: 30,
                ),
                CheckboxListTile(
                    title: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: '서비스 이용을 위한 필수 약관동의',
                          style: TextStyle(
                              color: const Color(0xff41424A),
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '(필수)',
                          style: TextStyle(
                              color: const Color(0xff2C439B),
                              fontWeight: FontWeight.w700)),
                    ])),
                    value: _ischecked2,
                    onChanged: (value) {
                      setState(() {
                        _ischecked2 = value!;
                        if (_ischecked2) {
                        } else {
                          _ischecked1 = value;
                        }
                        if (_ischecked2 && _ischecked3 && _ischecked4) {
                          _ischecked1 = true;
                        }
                      });
                    },
                    activeColor: Colors.white,
                    checkColor: const Color(0xff2C439B),
                    side: MaterialStateBorderSide.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(
                            width: 1, color: const Color(0xff41424A));
                      }
                      return const BorderSide(
                          width: 1, color: const Color(0xff41424A));
                    })),
                SizedBox(
                  height: 30,
                ),
                CheckboxListTile(
                    title: Text(
                      '위치 기반 정보 활용 동의',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text('(주변 전시회를 안내드리기 위해 필요해요.)',
                        style: TextStyle(
                            color: const Color(0xff41424A),
                            fontWeight: FontWeight.w500)),
                    value: _ischecked3,
                    onChanged: (value) {
                      setState(() {
                        _ischecked3 = value!;
                        if (_ischecked3) {
                        } else {
                          _ischecked1 = value;
                        }
                        if (_ischecked2 && _ischecked3 && _ischecked4) {
                          _ischecked1 = true;
                        }
                      });
                    },
                    activeColor: Colors.white,
                    checkColor: const Color(0xff2C439B),
                    side: MaterialStateBorderSide.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(
                            width: 1, color: const Color(0xff41424A));
                      }
                      return const BorderSide(
                          width: 1, color: const Color(0xff41424A));
                    })),
                SizedBox(
                  height: 30,
                ),
                CheckboxListTile(
                    title: Text(
                      '마케팅 활용 및 광고성 정보 수신 동의',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    value: _ischecked4,
                    onChanged: (value) {
                      setState(() {
                        _ischecked4 = value!;
                        if (_ischecked4) {
                        } else {
                          _ischecked1 = value;
                        }
                        if (_ischecked2 && _ischecked3 && _ischecked4) {
                          _ischecked1 = true;
                        }
                      });
                    },
                    activeColor: Colors.white,
                    checkColor: const Color(0xff2C439B),
                    side: MaterialStateBorderSide.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(
                            width: 1, color: const Color(0xff41424A));
                      }
                      return const BorderSide(
                          width: 1, color: const Color(0xff41424A));
                    })),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(55, 0, 50, 0),
            child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff2C439B),
                    minimumSize: Size.fromHeight(45),
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Text('다음',
                    style: TextStyle(color: Colors.white, fontSize: 16))),
          ),
          const Flexible(
            child: FractionallySizedBox(heightFactor: 0.1),
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    posterList = PosterList.fromJson(posterItem);
    int cnt = posterList!.list!.length;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            title: Image.asset('assets/logo.png', width: 130),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: null,
                icon: Image.asset('assets/icon_search.png'),
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              )
            ],
          ),
        ),
        body: Column(children: [
          Container(
            child: Stack(
              children: [
                Container(
                    height: 520,
                    child: PageView.builder(
                      controller: PageController(initialPage: 0),
                      itemCount: posterList!.list!.length,
                      onPageChanged: (value) {
                        setState(() {
                          idx = value;
                        });
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(children: [
                          Container(
                            height: 520,
                            child: Image.asset(
                              posterList!.list!.elementAt(index).image!,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            top: 0,
                            left: 0,
                            child: Container(
                                height: 520,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Color(0xff41424A)
                                      ]),
                                ),
                                child: SizedBox()),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '황도유 : Innocentblossom',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  '서정아트 강남',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '2023. 03. 27 ~ 2023. 04. 26',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]);
                      },
                    )),
                Positioned(
                  bottom: 30,
                  right: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      primary: Color.fromRGBO(255, 255, 255, 0.8),
                    ),
                    child: Text(
                      '${idx+1}/$cnt',
                      style: TextStyle(
                        color: const Color(0xff41424A),
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
