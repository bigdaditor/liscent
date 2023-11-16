import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liscent/src/controller/root_controller.dart';
import 'package:liscent/src/screens/home/home_screen.dart';
import 'package:liscent/src/screens/mypage/mypage_screen.dart';
import 'package:liscent/src/screens/nearby/nearby_screen.dart';
import 'package:liscent/src/screens/search/search_screen.dart';

class Root extends GetView<RootController> {
  Root({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Obx(
        () => Scaffold(
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
              body: IndexedStack(
                index: controller.rootPageIndex.value,
                children: <Widget>[
                  Navigator(
                    key: controller.navigationKeyList[0],
                    onGenerateRoute: (routeSettings) {
                      return MaterialPageRoute(
                        builder: (context) => const Home()
                      );
                    },
                  ),
                  Navigator(
                    key: controller.navigationKeyList[1],
                    onGenerateRoute: (routeSettings) {
                      return MaterialPageRoute(
                          builder: (context) => const Home()
                      );
                    },
                  ),
                  Navigator(
                    key: controller.navigationKeyList[2],
                    onGenerateRoute: (routeSettings) {
                      return MaterialPageRoute(
                          builder: (context) => const NearbyScreen()
                      );
                    },
                  ),
                  Navigator(
                    key: controller.navigationKeyList[3],
                    onGenerateRoute: (routeSettings) {
                      return MaterialPageRoute(
                          builder: (context) => const Mypage()
                      );
                    },
                  )
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color(0xFF41424A),
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white,
                selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, height: 1.8),
                unselectedLabelStyle: TextStyle(fontSize: 12, height: 1.8),
                currentIndex: controller.rootPageIndex.value,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: controller.changeRootPageIndex,
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
                ]
              )
          )
      )
      ,
    );
  }
}