import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                        prefixIcon: IconButton(
                          icon: Image.asset('assets/icon_search.png'),
                          onPressed: () => {},
                        ),
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
                  SizedBox(height: 130),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '아쉽지만 검색하신 결과를',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff41424A)
                          ),
                        ),
                        Text(
                          '찾을 수 없어요.',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff41424A)
                          ),
                        ),
                        SizedBox(height: 30),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: '다른 검색어',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2C439B))

                          ),
                          TextSpan(text: '를 입력해주세요.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff41424A))
                          )]))
                      ],
                    ),
                  )
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
}
