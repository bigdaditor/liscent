import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '환영합니다!',
                  style: TextStyle(
                      color: const Color(0xff41424A),
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'LISCENT ',
                      style: TextStyle(
                          color: const Color(0xff2C439B),
                          fontSize: 35,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: '사용을 위한',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 35,
                          fontWeight: FontWeight.w700)),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '동의',
                      style: TextStyle(
                          color: const Color(0xff2C439B),
                          fontSize: 35,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: '가 필요합니다.',
                      style: TextStyle(
                          color: const Color(0xff41424A),
                          fontSize: 35,
                          fontWeight: FontWeight.w700)),
                ])),
              ],
            ),
          ),
          const Flexible(
            child: FractionallySizedBox(heightFactor: 0.5),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 13, 0),
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
                    subtitle: Text('(Liscent의 다양한 정보를 안내드리기 위해 필요해요.)',
                        style: TextStyle(
                            color: const Color(0xff41424A),
                            fontWeight: FontWeight.w500)),
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
            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, '/guide');
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff2C439B),
                    minimumSize: Size.fromHeight(50),
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Text('다음',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700))),
          ),
          const Flexible(
            child: FractionallySizedBox(heightFactor: 0.4),
          ),
        ],
      ),
    );
  }
}
