import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold AppBar
      appBar: AppBar(
          title: Text('Anasayfa'),
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
            child: ListView(
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
                      onTap: null,
                        ),
                    ListTile(
                      textColor: Colors.white,
                      leading: Icon(Icons.people),
                      iconColor: Colors.white,
                      title: Center(child: Text('Arkadaşlar')),
                      onTap: null,
                    ),
                    ListTile(
                      textColor: Colors.white,
                      leading: Icon(Icons.bar_chart),
                      iconColor: Colors.white,
                      title: Center(child: Text('Liderlik Tablosu')),
                      onTap: null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Scaffold Body
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
                  onPressed: null,
                  icon: Image(
                    image: AssetImage('images/stitch.png'),
                  )
              ),
            ),
            SizedBox(height:double.infinity),
          ],
        ),
        // Scaffold Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[900],
          unselectedItemColor: Colors.yellowAccent,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Icon',
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
