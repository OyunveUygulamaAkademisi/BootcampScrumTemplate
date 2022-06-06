import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yabika/screens/endGamePage.dart';
import 'package:yabika/screens/firestoreservice.dart';

import 'lessonsPage.dart';

class ReligionPage extends StatefulWidget {
  const ReligionPage({Key? key}) : super(key: key);


  @override
  State<ReligionPage> createState() => _ReligionPageState();
}

class _ReligionPageState extends State<ReligionPage> {
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
                'images/reli1.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 295,
              left: 285,
              child: Text(
                '2017 LYS-4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
                firestore.updateData( );
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage2()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

class ReligionPage2 extends StatefulWidget {
  const ReligionPage2({Key? key}) : super(key: key);

  @override
  State<ReligionPage2> createState() => _ReligionPage2State();
}

class _ReligionPage2State extends State<ReligionPage2> {
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
                'images/reli2.jpeg',
                width: 390,
                height: 350,
              ),
            ),
            Positioned(
              top: 300,
              left: 295,
              child: Text(
                '2017 LYS-4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
                firestore.updateData( );
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage3()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReligionPage3 extends StatefulWidget {
  const ReligionPage3({Key? key}) : super(key: key);

  @override
  State<ReligionPage3> createState() => _ReligionPage3State();
}

class _ReligionPage3State extends State<ReligionPage3> {
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
                'images/reli3.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 275,
              left: 280,
              child: Text(
                '2015 LYS-4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
                firestore.updateData( );
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage4()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReligionPage4 extends StatefulWidget {
  const ReligionPage4({Key? key}) : super(key: key);

  @override
  State<ReligionPage4> createState() => _ReligionPage4State();
}

class _ReligionPage4State extends State<ReligionPage4> {
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
              'images/reli6.jpeg',
              width: 400,
              height: 350,
            ),
          ),
          Positioned(
            top: 280,
            left: 295,
            child: Text(
              '2013 LYS-4',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
            }, child: Text('A'),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
            }, child: Text('B'),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
            }, child: Text('C'),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
            }, child: Text('D'),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
              firestore.updateData( );
            }, child: Text('E'),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ReligionPage5()));
            }, child: Text('BOŞ'),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

class ReligionPage5 extends StatefulWidget {
  const ReligionPage5({Key? key}) : super(key: key);

  @override
  State<ReligionPage5> createState() => _ReligionPage5State();
}

class _ReligionPage5State extends State<ReligionPage5> {
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
              'images/reli5.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 260,
            left: 280,
            child: Text(
              '2015 LYS-4',
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
              firestore.updateData( );
            }, child: Text('D'),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
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
