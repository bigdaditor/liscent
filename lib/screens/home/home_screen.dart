import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liscent/model/Item.dart';
import 'package:liscent/model/ItemList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;
  List? _items;

  Future<void> getJson() async {
    final String response = await rootBundle.loadString('assets/db/item.json');
    final data = await json.decode(response);
    _items = data;
  }

  @override
  Widget build(BuildContext context) {
    getJson();

    int cnt = _items!.length;

    return Scaffold(
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
                              itemCount: _items!.length,
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
                                      _items![idx]['image'],
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
                                          _items![idx]['title'],
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
                                          _items![idx]['start'] + " ~ " + _items![idx]['end'],
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
