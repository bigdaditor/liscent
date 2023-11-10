import 'package:flutter/material.dart';
import 'package:liscent/screens/home/home_screen.dart';
import 'package:liscent/screens/mypage/mypage_screen.dart';
import 'package:liscent/screens/nearby/nearby_screen.dart';

enum TabItem {
  home,
  doscent,
  nearby,
  mypage
}

const Map<TabItem, int> tabIdx = {
  TabItem.home: 0,
  TabItem.doscent: 1,
  TabItem.nearby: 2,
  TabItem.mypage: 3,
};

const Map<TabItem, Widget> tabScreen = {
  TabItem.home: const Home(),
  TabItem.doscent: const Home(),
  TabItem.nearby: const NearbyScreen(),
  TabItem.mypage: const Mypage(),
};