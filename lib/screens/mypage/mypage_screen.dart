import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: '전시를 사랑하는 ',
                          style: TextStyle(fontSize: 20, letterSpacing: 1)),
                      TextSpan(
                          text: '양나래',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2C439B),
                              letterSpacing: 1)),
                      TextSpan(
                          text: '님',
                          style: TextStyle(fontSize: 20, letterSpacing: 1))
                    ]),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.width / 20,
                    width: MediaQuery.of(context).size.width / 20,
                    padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [.5, .5],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff2C439B),
                          Colors.transparent, // top Right part
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '좋아하는 전시',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700,color: Color(0xff41424A)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '더보기',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -4),
                                      color: Color(0xff41424A))
                                ],
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff41424A)),
                          ))
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 3 ,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '좋아하는 작품',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700,color: Color(0xff41424A)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '더보기',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -4),
                                      color: Color(0xff41424A))
                                ],
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff41424A)),
                          ))
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 3 ,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '좋아하는 도슨트',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700,color: Color(0xff41424A)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '더보기',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.transparent,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -4),
                                      color: Color(0xff41424A))
                                ],
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff41424A)),
                          ))
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 3 ,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                        SizedBox(width: 10),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.asset('assets/poster04.jpg'),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
