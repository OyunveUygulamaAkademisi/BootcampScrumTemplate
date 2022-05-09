import 'package:flutter/material.dart';
import 'package:swapy/screens/login/screen/after_login.dart';
import 'package:swapy/screens/login/screen/login.dart';
import 'package:swapy/screens/onboard/screen/onboard.dart';
import 'package:swapy/screens/register/screen/register.dart';

class AppRouter {
  static const String onBoard = '/';
  static const String login = '/login';
  static const String afterLogin = '/after-login';
  static const String register = '/register';

  static MaterialPageRoute<Object>? generateRoute(RouteSettings routeSettings, {Widget? route}) {
    return MaterialPageRoute(builder: (context) => getPage(routeSettings));
  }

  static Widget getPage(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return Onboard();
      case '/login':
        return Login();
      case '/after-login':
        return AfterLogin();
      case '/register':
        return Register();
      default:
        return Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        );
    }
  }
}
