import 'package:firebase_core/firebase_core.dart';
import 'package:yabika/screens/loginPage.dart';
import 'package:yabika/screens/registerPage.dart';
import 'package:flutter/material.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        home: LoginPage(),
      );
    }
  }
