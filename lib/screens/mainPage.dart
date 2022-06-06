import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yabika/components/leftDrawer.dart';
import 'package:yabika/screens/chooseLessonPage.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:yabika/screens/loginPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/components/bottomNav.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return GetMainPageView();
  }
}

class GetMainPageView extends StatelessWidget {
  Widget getMainPageView(BuildContext context) {
    var mainPageView = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // AppBar title changes according to navbar index
          title: Text("Anasayfa"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
            },
          ),
          backgroundColor: Colors.blueGrey[900],
          actions: [
            Row(
              children: [
                Text('256'),
                SizedBox(
                  width: 8.0,
                ),
                Icon(Icons.card_giftcard),
                SizedBox(
                  width: 16.0,
                ),
              ],
            )
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // Icon is wrapped with 2 infinity sized box to be centered!
          children: [
            SizedBox(height: double.infinity),
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
                          builder: (context) => ChooseLessonPage()),
                    );
                  },
                  icon: Image(
                    image: AssetImage('images/stitch.png'),
                  )),
            ),
            SizedBox(height: double.infinity),
          ],
        ),
        // Scaffold Drawer
        drawer: LeftDrawer(),
        bottomNavigationBar: BottomNav(),
      ),
    );
    return mainPageView;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getMainPageView(context));
  }
}


