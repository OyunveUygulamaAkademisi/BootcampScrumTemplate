import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yabika/screens/endGamePage.dart';
import 'package:yabika/screens/firestoreservice.dart';

import 'lessonsPage.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({Key? key}) : super(key: key);


  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  final firestore=FirestoreService();

  //late Timer _timer;
  //int counter = 300;
  //void _startTimer(){

  // _timer = Timer.periodic(Duration(seconds: 1), (timer) {
  // setState(() {
  // if(counter>0) {
  // counter--;
  //}
  //else {
  // _timer.cancel();
  //}
  //});
  //});
  //}

  @override
  Widget build(BuildContext context) {
    //_startTimer();
    return Scaffold(
      appBar: AppBar(
        title: Text('1.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            //Text("$counter"),
            Positioned(
              top: 10,
              left: 25,
              child: Image.asset(
                'images/ing1.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 290,
              left: 280,
              child: Text(
                '2014 LYS-5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
                firestore.updateData( );
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage2()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

class EnglishPage2 extends StatefulWidget {
  const EnglishPage2({Key? key}) : super(key: key);

  @override
  State<EnglishPage2> createState() => _EnglishPage2State();
}

class _EnglishPage2State extends State<EnglishPage2> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 10,
              child: Image.asset(
                'images/ing2.jpeg',
                width: 400,
                height: 350,
              ),
            ),
            Positioned(
              top: 250,
              left: 295,
              child: Text(
                '2014 LYS-5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
                firestore.updateData( );
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage3()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnglishPage3 extends StatefulWidget {
  const EnglishPage3({Key? key}) : super(key: key);

  @override
  State<EnglishPage3> createState() => _EnglishPage3State();
}

class _EnglishPage3State extends State<EnglishPage3> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 25,
              child: Image.asset(
                'images/ing3.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 298,
              left: 275,
              child: Text(
                '2014 LYS-5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
                firestore.updateData( );
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage4()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnglishPage4 extends StatefulWidget {
  const EnglishPage4({Key? key}) : super(key: key);

  @override
  State<EnglishPage4> createState() => _EnglishPage4State();
}

class _EnglishPage4State extends State<EnglishPage4> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      title: Text('4.Soru'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    ),
    body: Center(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 25,
            child: Image.asset(
              'images/ing4.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 295,
            left: 295,
            child: Text(
              '2014 LYS-5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
            }, child: Text('A'),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
            }, child: Text('B'),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
              firestore.updateData( );
            }, child: Text('C'),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
            }, child: Text('D'),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
            }, child: Text('E'),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnglishPage5()));
            }, child: Text('BOŞ'),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

class EnglishPage5 extends StatefulWidget {
  const EnglishPage5({Key? key}) : super(key: key);

  @override
  State<EnglishPage5> createState() => _EnglishPage5State();
}

class _EnglishPage5State extends State<EnglishPage5> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      title: Text('5.Soru'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    ),
    body: Center(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 25,
            child: Image.asset(
              'images/ing5.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 295,
            left: 270,
            child: Text(
              '2014 LYS-5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('A'),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('B'),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('C'),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('D'),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
              firestore.updateData( );
            }, child: Text('E'),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('BOŞ'),
            ),
          ),
        ],
      ),
    ),
  );
  }
}
