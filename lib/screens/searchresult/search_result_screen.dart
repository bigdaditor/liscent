import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  int _selectedIndex = 0;
  bool click = true;

  String? _dropdownValue;
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
        body: Stack(
          children: [
            Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '전시, 작가, 작품, 도슨트를 검색하세요.',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xff41424A).withOpacity(0.6)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Color(0xff2C439B),
                            ),
                            onPressed: () => {},
                          ),
                          prefixIcon: Image.asset('assets/icon_search.png', width: 22,),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff41424A))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff41424A))),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 16),
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 6,
                          runSpacing: 6,
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(14),
                                    backgroundColor: Colors.white,
                                    primary: Color(0xff41424A),
                                    textStyle: TextStyle(fontSize: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    side: BorderSide(
                                        width: 1, color: Color(0xff41424A))),
                                onPressed: () {},
                                child: Text('장줄리앙')),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(14),
                                    backgroundColor: Colors.white,
                                    primary: Color(0xff41424A),
                                    textStyle: TextStyle(fontSize: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    side: BorderSide(
                                        width: 1, color: Color(0xff41424A))),
                                onPressed: () {},
                                child: Text('어노미스트')),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(14),
                                    backgroundColor: Colors.white,
                                    primary: Color(0xff41424A),
                                    textStyle: TextStyle(fontSize: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    side: BorderSide(
                                        width: 1, color: Color(0xff41424A))),
                                onPressed: () {},
                                child: Text('나탈리카르푸센코')),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(14),
                                    backgroundColor: Colors.white,
                                    primary: Color(0xff41424A),
                                    textStyle: TextStyle(fontSize: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    side: BorderSide(
                                        width: 1, color: Color(0xff41424A))),
                                onPressed: () {},
                                child: Text('장줄리앙')),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(14),
                                    backgroundColor: Colors.white,
                                    primary: Color(0xff41424A),
                                    textStyle: TextStyle(fontSize: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    side: BorderSide(
                                        width: 1, color: Color(0xff41424A))),
                                onPressed: () {},
                                child: Text('알폰스무하전')),
                          ],
                        )),
                    SizedBox(height: 20),
                    Expanded(
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return listcard();
                          },
                        ))
                  ],
                )),
            Positioned(
                bottom: 25,
                right: 25,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Image.asset('assets/icon_arrow_left.png',
                      width: 30, height: 30),
                  backgroundColor: Color(0xff2C439B),
                ))
          ],
        )
    );
  }

  Column listcard() {
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
                    'assets/poster03.jpg',
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
                    Text(
                      '전시명',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: Color(0xff41424A)),
                    ),
                    Text(
                      '전시 장소',
                      style: TextStyle(
                          fontSize: 12, color: Color.fromRGBO(65, 66, 74, 0.7)),
                    ),
                    Text(
                      '전시 일정',
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
