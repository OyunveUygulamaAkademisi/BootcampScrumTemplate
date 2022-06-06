import 'package:flutter/material.dart';
import 'package:yabika/screens/challengers.dart';
import 'package:yabika/screens/leaderboard.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:yabika/screens/mainPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';

class BottomNav extends StatefulWidget {

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  // Widgets that will be built is listed here.
  List<Widget> _widgetOptions = <Widget>[
    GetMainPageView(),
    MaxTable4(),
    ProfilePage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (context) => _widgetOptions.elementAt(index)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        unselectedItemColor: Colors.yellowAccent,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Mainpage Icon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Statistics Icon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile Icon',
          ),
        ],
        onTap: _onItemTap,
      );
  }
}
