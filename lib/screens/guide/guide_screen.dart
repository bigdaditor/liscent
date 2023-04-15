import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  const Guide({Key? key}) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(35),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'LISCENT',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff2C439B))),
                        TextSpan(
                            text: '를 처음 사용하는 분을 위한 가이드',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff41424A)))
                      ])),
                  const Flexible(
                    child: FractionallySizedBox(heightFactor: 0.2),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _activePage = page;
                            });
                          },
                          itemCount: _pages.length,
                          itemBuilder: (context, index) {
                            print(index % _pages.length);
                            return _pages[index % _pages.length];
                          },
                        )),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 100,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                  _pages.length,
                                      (index) => Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: InkWell(
                                      onTap: () {
                                        _pageController.animateToPage(index,
                                            duration:
                                            Duration(milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                        _activePage == index
                                            ? Color(0xff2C439B)
                                            : Color(0xff41424A),
                                      ),
                                    ),
                                  )),
                            ),
                          )),
                    ],
                  ),
                  const Flexible(
                    child: FractionallySizedBox(heightFactor: 0.3),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () async {final result = await Navigator.pushNamed(context, '/home');},
                      child: Text(
                        '시작하기',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2C439B),
                          minimumSize: Size.fromHeight(50),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                  )
                ],
              ),
            )));
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: const Text(
          '안내 첫번째 페이지',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.pink,
      child: const Text(
        '안내 두번째 페이지',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: const Text(
          '안내 세번째 페이지',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ));
  }
}
