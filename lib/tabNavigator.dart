import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yabika/screens/chooseLessonPage.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:yabika/screens/mainPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  const TabNavigator({Key? key, required this.navigatorKey, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;

    if(tabItem == "Anasayfa")
      child = GetMainPageView();
    //else if(tabItem == "Liderlik Tablosu")
      //child = Lessons();
    //else if(tabItem == "Deneme")
      //child = QuestionPage();
    else if(tabItem == "Profil")
      child = ProfilePage();
    else
      child = ChooseLessonPage();
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings){
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
