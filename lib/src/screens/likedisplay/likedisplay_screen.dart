import 'package:flutter/material.dart';

class Likedisplay extends StatefulWidget {
  const Likedisplay({Key? key}) : super(key: key);

  @override
  State<Likedisplay> createState() => _LikedisplayState();
}

class _LikedisplayState extends State<Likedisplay> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('좋아하는 전시',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff41424A))),
                    Container(
                      width: 100,
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                            isDense: true,
                            isExpanded: true,
                            icon: Icon(Icons.keyboard_arrow_down_outlined),
                            iconSize: 18,
                            iconDisabledColor: Color(0xff41424A),
                            iconEnabledColor: Color(0xff41424A),
                            style:
                            TextStyle(fontSize: 13, color: Color(0xff41424A)),
                            value: _dropdownValue,
                            items: [
                              '최신순',
                              '가나다순',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text('정렬'),
                            onChanged: (String? value) {
                              setState(() {
                                _dropdownValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff41424A), width: 1)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 3),
                    )
                  ],
                )),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
              itemCount: 20,
              itemBuilder: (context, index) {
                return listcard();
              },
            ))
          ],
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
        ));
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
