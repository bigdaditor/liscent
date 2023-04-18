import 'package:flutter/material.dart';
import '/model/PosterItem.dart';

final posterItem = {
  "list": [
    {"image": "assets/poster01.jpg", "name": "포스터01"},
    {"image": "assets/poster02.jpg", "name": "포스터02"},
    {"image": "assets/poster03.jpg", "name": "포스터03"},
    {"image": "assets/poster04.jpg", "name": "포스터04"}
  ]
};

PosterList? posterList;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;
  int _selectedIndex = 0;

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
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints) => Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
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
                              itemBuilder: (context, int index) {
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                              '${idx + 1}/$cnt',
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
                  Container(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '추천 도슨트',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff41424A)),
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
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                    ),
                    padding: EdgeInsets.all(20),
                    itemCount: 10,
                    itemBuilder: (context, int index) => ItemCard(),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
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
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Image.asset('assets/poster01.jpg'),
          ),
          Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 12, 0, 12),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(255, 255, 255, 0.8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '도슨트 명',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          height: 1.8),
                    ),
                    Text(
                      '장소 이름',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
