import 'package:flutter/material.dart';
import 'package:yabika/screens/chooseLessonPage.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';

void main() =>  runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentNavScreenIndex = 0;
  int currentAppBarTitleIndex = 0;

  final bottomNavigationBarScreens = [
    ChooseLessonPage(),
    Lessons(),
    QuestionPage(),
    ProfilePage(),
  ];
  final navigationBarAppBarTitles = [
    'Dersler',
    'Burası',
    'Sorular',
    'Profil'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold AppBar
      appBar: AppBar(
      // AppBar title changes according to navbar index
          title: Text(navigationBarAppBarTitles[currentAppBarTitleIndex]),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
          actions: [
            Row(
            children: [
              Text('256'),
              SizedBox(width: 8.0,),
              Icon(Icons.card_giftcard),
              SizedBox(width: 16.0,),
            ],
          )
          ],
        ),
        // Scaffold Drawer
        drawer: Drawer(
          backgroundColor: Colors.blueGrey[900],
          child: SafeArea(
            child: GetListView(),
          ),
        ),
        // Scaffold Body
        body: bottomNavigationBarScreens[currentNavScreenIndex],
        // Scaffold Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() {
            currentNavScreenIndex = index;
            currentAppBarTitleIndex = index;
          }),
          backgroundColor: Colors.blueGrey[900],
          unselectedItemColor: Colors.yellowAccent,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Mainpage Icon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people_sharp), label: 'Friends Icon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Statistics Icon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile Icon',
          ),
          ],
        ),
      ),
    );
  }
}

class GetListView extends StatelessWidget {
  Widget getListView(BuildContext context) {
    var listView = ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Circle avatar can be used in this scenario but this approach more flexible
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                ),
                child: Image(image: AssetImage('images/lilo_stitch_hug.png'),
                  width: 100,
                  height: 100,

                ),
              ),
              Text(
                'Lilo & Stitch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.account_circle),
              iconColor: Colors.white,
              title: Center(child: Text('Profil')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    )
                );
              },
            ),
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.people),
              iconColor: Colors.white,
              title: Center(child: Text('Arkadaşlar')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lessons(),
                    )
                );
              },
            ),
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.bar_chart),
              iconColor: Colors.white,
              title: Center(child: Text('Liderlik Tablosu')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ChooseLessonPage(),
                    )
                );
              }
            ),
          ],
        ),
      ],
    );
    return listView;
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(body: getListView(context));
    }
}