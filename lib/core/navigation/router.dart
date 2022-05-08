import 'package:flutter/material.dart';
import 'package:swapy/screens/login/screen/login.dart';
import 'package:swapy/screens/onboard/screen/onboard.dart';

class AppRouter {
  static const String onBoard = '/';
  static const String login = '/login';

  static MaterialPageRoute<Object>? generateRoute(RouteSettings routeSettings, {Widget? route}) {
    return MaterialPageRoute(builder: (context) => getPage(routeSettings));
  }

  static Widget getPage(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return Onboard();
      case '/login':
        return Login();
      default:
        return Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        );
    }
  }
}
