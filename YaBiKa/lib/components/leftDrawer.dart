import 'package:flutter/material.dart';

import '../screens/chooseLessonPage.dart';
import '../screens/lessonsPage.dart';
import '../screens/profilePage.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey[900],
      child: SafeArea(
          child: GetListView()
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
                    color: Colors.white),
                child: Image(
                  image: AssetImage('images/lilo_stitch_hug.png'),
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
        Container(
          color: Colors.blueGrey[900],
          child: Column(
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
                      ));
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
                      ));
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
                        ));
                  }),
            ],
          ),
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