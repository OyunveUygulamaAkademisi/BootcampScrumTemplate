import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swapy/core/constants/theme/theme.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/navigation/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: swapyLightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: NavigationService.instance.navigationKey,
    );
  }
}