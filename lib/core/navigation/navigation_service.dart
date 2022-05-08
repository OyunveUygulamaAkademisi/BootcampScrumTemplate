import 'package:flutter/cupertino.dart';

class NavigationService {
  static NavigationService? _instance;

  static NavigationService get instance => _instance ??= NavigationService._();

  final navigationKey = GlobalKey<NavigatorState>();

  NavigationService._();

  Future<Object?>? navigateTo(String routeName, {arg}) =>
      navigationKey.currentState?.pushNamed(routeName, arguments: arg);

  Future<Object?>? navigateReplacement(String routeName, {arg}) =>
      navigationKey.currentState
          ?.pushReplacementNamed(routeName, arguments: arg);

  void navigateBack(String routeName, {arg}) =>
      navigationKey.currentState?.pop(arg);

  Future<Object?>? navigateToRemoveUntil(String routeName, {arg}) =>
      navigationKey.currentState
          ?.pushNamedAndRemoveUntil(routeName, (f) => f.settings.name == routeName);
}
