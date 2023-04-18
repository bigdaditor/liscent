import 'package:flutter/material.dart';

class Rank extends StatefulWidget {
  const Rank({Key? key}) : super(key: key);

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                child: Text('전시 작품 리스트',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff41424A))),
              ),
              TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  labelColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  unselectedLabelColor: Color(0xff2C439B),
                  indicator:
                      BoxDecoration(color: Color(0xff2C439B), boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ]),
                  tabs: [
                    Tab(text: '좋아요 순위'),
                    Tab(
                      text: '많이 들은 순위',
                    )
                  ]),
              Expanded(
                  child: TabBarView(
                children: [
                  ListView.builder(
                    key: PageStorageKey("LIST_VIEW"),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Likelist();
                    },
                  ),
                  ListView.builder(
                    key: PageStorageKey("LIST_VIEW2"),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return listenlist();
                    },
                  ),
                ],
              ))
            ],
          ),
        ));
  }

  Column Likelist() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Color(0xff41424A))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 15, 10),
                    child: Image.asset(
                      'assets/poster03.jpg',
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '도슨트명',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff41424A)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_right_outlined,
                              size: 30,
                              color: Color(0xff41424A),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned( // 이중박스 고려
              child: Container(
                height: MediaQuery.of(context).size.width / 12,
                width: MediaQuery.of(context).size.width / 12,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [.5, .5],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.green,
                      Colors.transparent, // top Right part
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(height: 15)
      ],
    );
  }

  Column listenlist() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width / 3,
          color: Color.fromRGBO(44, 67, 155, 0.1),
          child: Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/poster04.jpg',
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: IconButton(
                      icon: Image.asset((click == true)
                          ? 'assets/icon_heart.png'
                          : 'assets/icon_heart_full.png'),
                      iconSize: 15,
                      selectedIcon: Image.asset('assets/icon_heart_full.png'),
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Title(
                        color: Color(0xff41424A),
                        child: Text(
                          '작품명',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        )),
                    Text(
                      '작가명',
                      style: TextStyle(
                          fontSize: 12, color: Color.fromRGBO(65, 66, 74, 0.7)),
                    ),
                    Text(
                      '2002 작품년도',
                      style: TextStyle(
                          fontSize: 12, color: Color.fromRGBO(65, 66, 74, 0.7)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(height: 15)
      ],
    );
  }
}
