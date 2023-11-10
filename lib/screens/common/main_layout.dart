import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liscent/model/TabItem.dart';
import 'package:liscent/screens/common/bottom_navigation.dart';
import 'package:liscent/screens/common/header.dart';
import 'package:liscent/screens/common/tab_navigator.dart';
import 'package:liscent/screens/home/home_screen.dart';
import 'package:liscent/screens/nearby/nearby_screen.dart';
import 'package:liscent/screens/search/search_screen.dart';

class MainLayout extends StatefulWidget{

  @override
  State<MainLayout> createState() => MainLayoutState();
}


class MainLayoutState extends State<MainLayout> {
  var _currentTab = TabItem.home;

  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.doscent: GlobalKey<NavigatorState>(),
    TabItem.nearby: GlobalKey<NavigatorState>(),
    TabItem.mypage: GlobalKey<NavigatorState>(),
  };

  void onTapped(TabItem tabItem) {
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab = !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != TabItem.home) {
            onTapped(TabItem.home);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
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
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.home),
            _buildOffstageNavigator(TabItem.doscent),
            _buildOffstageNavigator(TabItem.nearby),
            _buildOffstageNavigator(TabItem.mypage)
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: onTapped
        )
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem
      ),
    );
  }
}