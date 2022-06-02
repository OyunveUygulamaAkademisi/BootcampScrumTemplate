import 'package:flutter/material.dart';
import 'package:yabika/screens/chooseLessonPage.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';
import 'package:yabika/tabNavigator.dart';

void main() =>  runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentNavScreenIndex = 0;
  int currentAppBarTitleIndex = 0;

  final bottomNavigationBarScreens = [
    GetMainPageView(),
    Lessons(),
    QuestionPage(),
    ProfilePage(),
  ];
  final navigationBarAppBarTitles = [
    'Anasayfa',
    'Burası',
    'Sorular',
    'Profil'
  ];

  /*
  *
  *  final Map<String,GlobalKey<NavigatorState>> _navigatorKeys = {
    "Anasayfa": GlobalKey<NavigatorState>(),
    'Burası': GlobalKey<NavigatorState>(),
    'Sorular': GlobalKey<NavigatorState>(),
    'Profil': GlobalKey<NavigatorState>(),
  };
  *
  Widget _buildOffstageNavigator(String tabItem){
    return Offstage(
      offstage: _currentNavScreenIndex != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
  * */
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
        /*
        * Stack(
          children: [
            _buildOffstageNavigator("Anasayfa"),
            _buildOffstageNavigator("Anasayfa"),
            _buildOffstageNavigator("Anasayfa"),

          ],
        ),
        * */
        body: bottomNavigationBarScreens[_currentNavScreenIndex],
        // Scaffold Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() {
            _currentNavScreenIndex = index;
            currentAppBarTitleIndex = index;
          }),
          currentIndex: _currentNavScreenIndex,
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


class GetMainPageView extends StatelessWidget{
  Widget getMainPageView(BuildContext context) {
    var mainPageView = MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // Icon is wrapped with 2 infinity sized box to be centered!
          children: [
            SizedBox(height:double.infinity),
            Container(
              // Padding around start icon
              padding: EdgeInsets.all(20),
              // Rounded corners and colors for background and border
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.purple,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              // Stich icon button
              child: IconButton(
                  iconSize: 100,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLessonPage()
                      ),
                    );
                  },
                  icon: Image(
                    image: AssetImage('images/stitch.png'),
                  )
              ),
            ),
            SizedBox(height:double.infinity),
          ],
        ),
      ),
    );
    return mainPageView;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getMainPageView(context));
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