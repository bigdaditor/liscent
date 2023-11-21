import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liscent/src/model/Doscent.dart';
import 'package:liscent/src/model/Exhibition.dart';
import 'package:liscent/src/widget/api_widget.dart';
import 'package:liscent/src/screens/search/search_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;

  Future<List<Exhibition>> exhibitions = ApiService.getExhibition();
  Future<List<Doscent>> doscents = ApiService.getDoscent();

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
                onPressed: () {
                  Navigator.push(
                      context,
                        MaterialPageRoute(
                          builder: (context) => Search(),
                        )
                      );
                    },
                    icon: Image.asset('assets/icon_search.png'),
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  )
                ],
              )
          ),
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints) => Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder(
                      future: exhibitions,
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(child: CircularProgressIndicator());
                          default:
                            if (snapshot.hasData && snapshot.data!.length > 0) {
                              return Container(
                                child: Stack(
                                  children: [
                                    Container(
                                        height: 520,
                                        child: PageView.builder(
                                          controller: PageController(initialPage: 0),
                                          itemCount: snapshot.data!.length,
                                          onPageChanged: (value) {
                                            setState(() {
                                              idx = value;
                                            });
                                          },
                                          itemBuilder: (context, index) {
                                            var exhibition = snapshot.data![idx];

                                            return Stack(children: [
                                              Container(
                                                height: 520,
                                                child: Image.asset(
                                                  exhibition.image,
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
                                                          colors: [Colors.transparent, Color(0xff41424A)]
                                                      ),
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
                                                      exhibition.title,
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
                                                      exhibition.place,
                                                      style: TextStyle(
                                                        color: Color(0xffFFFFFF),
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text(
                                                      exhibition.start + " ~ " + exhibition.end,
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
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                                          primary: Color.fromRGBO(255, 255, 255, 0.8),
                                        ),
                                        child: Text(
                                          '${idx + 1}/${snapshot.data!.length}',
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
                              );
                            } else {
                              return Center(
                                child: Text('Error'),
                              );
                            }
                        }
                      }),
                  Container(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '추천 도슨트',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff41424A)),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '더보기',
                                style: TextStyle(fontSize: 13, color: Colors.transparent, shadows: [Shadow(offset: Offset(0, -4), color: Color(0xff41424A))], decoration: TextDecoration.underline, decorationColor: Color(0xff41424A)),
                              ))
                        ],
                      ),
                    ),
                  ),
                  FutureBuilder(
                    future: doscents,
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                        default:
                          if (snapshot.hasData && snapshot.data!.length > 0) {
                            return GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                childAspectRatio: 1,
                              ),
                              padding: EdgeInsets.all(20),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, int index) => Container(
                                child: Stack(
                                  children: [
                                    Container(
                                    // padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                      ),
                                        child: Image.asset(
                                          snapshot.data![index].image
                                        ),
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
                                                  snapshot.data![index].title,
                                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, height: 1.8),
                                                ),
                                                Text(
                                                  snapshot.data![index].place,
                                                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ))
                                    ],
                                  )),
                            );
                          } else {
                            return Center(
                              child: Text('Error'),
                            );
                          }
                      }
                    }
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
