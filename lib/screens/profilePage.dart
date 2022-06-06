import 'package:firebase_auth/firebase_auth.dart';
import 'package:yabika/screens/lessonsPage.dart';
import 'package:flutter/material.dart';
import 'package:yabika/screens/mainPage.dart';

import '../components/bottomNav.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  List <String> docIDs = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil sayfası'),
          leading: IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage()));
          }, icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: 800,
          decoration: BoxDecoration(
              color: Colors.indigoAccent
          ),
          child: Container(
            padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4, color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1)
                                )
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://sketchok.com/images/articles/01-cartoons/000-va/216/21.jpg'
                                  )
                              )
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.white
                                  ),
                                  color: Colors.blue
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add_a_photo),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Text(user.email!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('90 LP'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(onPressed: () {},
                    child: Text('HATALAR'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      minimumSize: Size(200,40),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {},
                    child: Text('PERFORMANS'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      minimumSize: Size(200,40),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {},
                    child: Text('BAŞARIMLAR'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      minimumSize: Size(200,40),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      )
    );
  }
}

