import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get to => Get.find();
  RxInt rootPageIndex = 0.obs;
  List<GlobalKey<NavigatorState>> navigationKeyList = List.generate(4, (index) => GlobalKey<NavigatorState>());
  
  RxBool isCategoryPageOpen = false.obs;

  void changeRootPageIndex(int index) {
    rootPageIndex(index);
  }

  Future<bool> onWillPop() async {
    setCategoryPage(false);
    return !await navigationKeyList[rootPageIndex.value].currentState!.maybePop();
  }

  void setCategoryPage(bool ck) {
    isCategoryPageOpen(ck);
  }

  void back() {
    setCategoryPage(false);
    onWillPop();
  }
}