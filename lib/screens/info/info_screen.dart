import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);



  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
                            final result = await Navigator.pushNamed(context, '/home');
                          },
                        )),
                    Positioned(
                        top: 15,
                        right: 25,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Image.asset((click == true) ? 'assets/icon_heart.png' : 'assets/icon_heart_full.png'),
                              iconSize: 30,
                              selectedIcon: Image.asset('assets/icon_heart_full.png'),
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
                    Positioned(
                        bottom: 15,
                        right: 25,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Image.asset('assets/icon_list.png',
                              width: 30, height: 30),
                          backgroundColor: Color(0xff2C439B),
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '황도유 : Innocentblossom',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: Color(0xff41424A),
                          height: 2.8),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_map.png',
                          width: 14,
                          height: 14,
                        ),
                        Text(
                          '서정아트 강남',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff41424A),
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.fromLTRB(0, 3, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color: Color(0xff2C439B), width: 1))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '관람시간 : ',
                                style: TextStyle(
                                    color: Color(0xff2C439B),
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    height: 2)),
                            TextSpan(
                                text: '09:00 AM ~ 06:00 PM',
                                style: TextStyle(
                                    color: Color(0xff41424A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    height: 2))
                          ])),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '전시일정 : ',
                                style: TextStyle(
                                    color: Color(0xff2C439B),
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    height: 2)),
                            TextSpan(
                                text: '2023.03.17 ~ 2023.04.26',
                                style: TextStyle(
                                    color: Color(0xff41424A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    height: 2))
                          ])),

                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '휴관일 : ',
                                    style: TextStyle(
                                        color: Color(0xff2C439B),
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        height: 2)),
                                TextSpan(
                                    text: '공휴일',
                                    style: TextStyle(
                                        color: Color(0xff41424A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        height: 2))
                              ])),
                              SizedBox(width: MediaQuery.of(context).size.width/4),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '입장료 : ',
                                    style: TextStyle(
                                        color: Color(0xff2C439B),
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        height: 2)),
                                TextSpan(
                                    text: '무료',
                                    style: TextStyle(
                                        color: Color(0xff41424A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        height: 2))
                              ])),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '전화번호 : ',
                                style: TextStyle(
                                    color: Color(0xff2C439B),
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    height: 2)),
                            TextSpan(
                                text: '1644-9876',
                                style: TextStyle(
                                    color: Color(0xff41424A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    height: 2))
                          ])),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '기타안내 : ',
                                style: TextStyle(
                                    color: Color(0xff2C439B),
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    height: 2)),
                            TextSpan(
                                text: '입장마감 18시 30분',
                                style: TextStyle(
                                    color: Color(0xff41424A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    height: 2))
                          ])),
                        ],
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width,
                      child: Text(
                        ' 황도유의 그림을 설명하는 수식어들은 다양하지만, 그 중 모든 감상자들이 공통적으로 선택하는 단어는 바로 ‘순수함’일 것이다. 황도유가 작업을 하는 궁극적인 목적은 순수한 회화성을 탐구하는 것이고 이전부터 꾸준히 작품의 기반으로 삼아 온 방법론은 ‘일획론(一畫論)’이다. 이는 중국 청초의 승려화가인 석도(石濤)의 회화 이론으로, 모든 것은 한 획에서 출발하여 그 획 안에 우주와 그 너머의 모든 것이 담겨있음을 의미한다. 황도유 작가는 일획론을 자신의 언어로 재해석하여, 다른 도구로 대체할 수 없는 손 그리고 감각에 의탁한 표현을 추구하며 모든 표현을 일획으로 황도유의 그림을 설명하는 수식어들은 다양하지만, 그 중 모든 감상자들이 공통적으로 선택하는 단어는 바로 ‘순수함’일 것이다. 황도유가 작업을 하는 궁극적인 목적은 순수한 회화성을 탐구하는 것이고 이전부터 꾸준히 작품의 기반으로 삼아 온 방법론은 ‘일획론(一畫論)’이다. 이는 중국 청초의 승려화가인 석도(石濤)의 회화 이론으로, 모든 것은 한 획에서 출발하여 그 획 안에 우주와 그 너머의 모든 것이 담겨있음을 의미한다. 황도유 작가는 일획론을 자신의 언어로 재해석하여, 다른 도구로 대체할 수 없는 손 그리고 감각에 의탁한 표현을 추구하며 모든 표현을 일획으로.' ,
                        style: TextStyle(fontSize: 13,color: Color(0xff41424A),height: 2),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF41424A),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,height: 1.8),
          unselectedLabelStyle: TextStyle(fontSize: 12, height: 1.8),
          currentIndex: _selectedIndex,
          onTap: (index){
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
              ),),
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
              ),),
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
              ),),
          ],
        )
    );
  }
}

