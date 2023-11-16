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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 4))
                ]),
                child: TabBar(
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
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  ListView(
                    key: PageStorageKey("LIST_VIEW"),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                  color: Color(0xff41424A),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'st',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                  color: Color(0xff41424A).withOpacity(0.9),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'nd',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                  color: Color(0xff41424A).withOpacity(0.8),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '3',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'nd',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                  ListView(
                    key: PageStorageKey("LIST_VIEW2"),
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                color: Color(0xff41424A),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'st',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                color: Color(0xff41424A).withOpacity(0.9),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'nd',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                color: Color(0xff41424A).withOpacity(0.8),),
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
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [.5, .5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.transparent, // top Right part
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.width / 12,
                              width: MediaQuery.of(context).size.width / 12,
                              padding: EdgeInsets.fromLTRB(3, 3, 0, 0),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: '3',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(text: 'nd',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                    ))
                              ])),
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
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Container(
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
                                          Icons.play_arrow,
                                          size: 30,
                                          color: Color(0xff41424A),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
