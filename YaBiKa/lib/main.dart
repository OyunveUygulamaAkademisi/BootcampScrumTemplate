import 'package:yabika/screens/loginPage.dart';
import 'package:yabika/screens/registerPage.dart';
import 'package:flutter/material.dart';

  void main() => runApp(MyApp());
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        home: LoginPage(),
      );
    }
  }
