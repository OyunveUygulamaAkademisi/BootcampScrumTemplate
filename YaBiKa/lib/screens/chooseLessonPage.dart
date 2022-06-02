import 'package:flutter/material.dart';

void main() {
  runApp(ChooseLessonPage());
}

class ChooseLessonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold AppBar
      appBar: AppBar(
          title: Text('Dersler'),
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
          // Icon is wrapped with 2 infinity sized box to be centered!
          children: [
              // Left column
              Column(
                //
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.green,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    // Math icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/math_50x50.png'),
                        )
                    ),
                  ),
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // Science icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/science_64x64.png'),
                        )
                    ),
                  ),
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent[100],
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // English icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/english_50x50.png'),
                        )
                    ),
                  ),
                ],
              ),
              // Column separator sized box
              SizedBox(width: 8.0,),
              // Right column
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.redAccent[400],
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // Turkish icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/turkish_50x50.png'),
                        )
                    ),
                  ),
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent[100],
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // Stich icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/geography_64x64.png'),
                        )
                    ),
                  ),
                  Container(
                    // Padding around start icon
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 8),
                    // Rounded corners and colors for background and border
                    decoration: BoxDecoration(
                      color: Colors.brown[200],
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // Stich icon button
                    child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Image(
                          image: AssetImage('images/religion_64x64.png'),
                        )
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
