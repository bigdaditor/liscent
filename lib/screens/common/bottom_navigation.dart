import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liscent/model/TabItem.dart';

class BottomNavigation extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  BottomNavigation({
    required this.currentTab,
    required this.onSelectTab
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF41424A),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, height: 1.8),
      unselectedLabelStyle: TextStyle(fontSize: 12, height: 1.8),
      currentIndex: currentTab.index,
      onTap: (index) => onSelectTab(
        TabItem.values[index]
      ),
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
    );
  }
}