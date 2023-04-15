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
                                            posterList!.list!
                                                .elementAt(index)
                                                .image!,
                                            width:
                                            MediaQuery.of(context).size.width,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Positioned(
                                          width: MediaQuery.of(context).size.width,
                                          height:
                                          MediaQuery.of(context).size.height,
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
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                            child: Row(
                              children: [
                                Text('추천 도슨트'),
                                TextButton(onPressed: () {}, child: Text('더보기'))
                              ],
                            ),
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.75,
                          ),
                          // padding: EdgeInsets.all(20),
                          itemCount: 10,
                          itemBuilder: (context, int index) => ItemCard(),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        )
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 153,
                width: 153,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              Positioned(
                  left: 0,
                  top: 100,
                  child: Container(
                    height: 43,
                    width: 153,
                    color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '테스트 제목',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '테스트 소제목',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
