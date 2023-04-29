import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play({Key? key}) : super(key: key);

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  int _selectedIndex = 0;
  bool click = true;

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset('assets/poster02.jpg'),
                    ),
                    Positioned(
                        top: 15,
                        left: 25,
                        child: IconButton(
                          icon: Image.asset('assets/icon_arrow_left.png'),
                          iconSize: 30,
                          onPressed: () async {
                            final result =
                                await Navigator.pushNamed(context, '/home');
                          },
                        )),
                    Positioned(
                        top: 15,
                        right: 25,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Image.asset((click == true)
                                  ? 'assets/icon_heart.png'
                                  : 'assets/icon_heart_full.png'),
                              iconSize: 30,
                              selectedIcon:
                                  Image.asset('assets/icon_heart_full.png'),
                              onPressed: () {
                                setState(() {
                                  click = !click;
                                });
                              },
                            ),
                            IconButton(
                              icon: Image.asset('assets/icon_share.png'),
                              iconSize: 30,
                              onPressed: () {},
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(25, 10, 25, 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Intro / Innocentblossom',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: Colors.transparent,
                          height: 2.8,
                          shadows: [
                            Shadow(
                                offset: Offset(0, -10),
                                color: Color(0xff41424A))
                          ],
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff2C439B)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(
                          color: Color(0xff2C439B).withOpacity(0.1)),
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            '《Innocent Blossom》 에서는 이처럼 순수하고 신비로운 소녀들의 이미지에 모든 것이 새로 움트는 계절의 생동감을 더했다. 황도유가 늘 탐구하고 있는 가장 순수한 회화그리고 이를 구성하고 있는 최소한의,그리고 필수적인 요소들에 대해 고민할 수 있는 시간이다.',
                            style: TextStyle(
                                color: Color(0xff41424A),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 2),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(30, 5, 25, 5),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff2C439B), Color(0xff41424A)],
              begin: Alignment.topLeft, end: Alignment.bottomRight)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Intro / Innocentblossom',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_rounded,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF41424A),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w700, height: 1.8),
          unselectedLabelStyle: TextStyle(fontSize: 12, height: 1.8),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_home_off.png',
                  width: 25,
                  height: 25,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_home_on.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Docent',
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_docent_off.png',
                  width: 25,
                  height: 25,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_docent_on.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Nearby',
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_nearby_off.png',
                  width: 25,
                  height: 25,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_nearby_on.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Mypage',
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_mypage_off.png',
                  width: 25,
                  height: 25,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_mypage_on.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ],
        ));
  }
}
