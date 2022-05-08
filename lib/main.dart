import 'package:flutter/material.dart';
import 'package:swapy/core/constants/theme/theme.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/navigation/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: swapyLightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: NavigationService.instance.navigationKey,
    );
  }
}