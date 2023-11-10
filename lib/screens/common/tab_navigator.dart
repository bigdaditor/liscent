import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liscent/model/TabItem.dart';

class TabNavigatorRoutes {
  static const String root = '/';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  TabNavigator({
    required this.navigatorKey,
    required this.tabItem
  });

  Map<String, WidgetBuilder> _routeBuilder(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => tabScreen[tabItem]!,
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilder(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}