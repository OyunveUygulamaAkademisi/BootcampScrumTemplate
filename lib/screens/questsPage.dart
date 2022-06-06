import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yabika/screens/endGamePage.dart';
import 'package:yabika/screens/firestoreservice.dart';

import 'lessonsPage.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);


  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

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
                'images/soru1.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 280,
              left: 295,
              child: Text(
                  '2015 LYS-1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
                firestore.updateData( );
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage2()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

class QuestionPage2 extends StatefulWidget {
  const QuestionPage2({Key? key}) : super(key: key);

  @override
  State<QuestionPage2> createState() => _QuestionPage2State();
}

class _QuestionPage2State extends State<QuestionPage2> {
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
              top: 10,
              left: 25,
              child: Image.asset(
                'images/soru2.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 260,
              left: 295,
              child: Text(
                  '2015 LYS-1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
                firestore.updateData( );
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage3()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionPage3 extends StatefulWidget {
  const QuestionPage3({Key? key}) : super(key: key);

  @override
  State<QuestionPage3> createState() => _QuestionPage3State();
}

class _QuestionPage3State extends State<QuestionPage3> {
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
                'images/soru3.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 240,
              left: 295,
              child: Text(
                '2015 LYS-1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
              }, child: Text('A'),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
              }, child: Text('B'),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
              }, child: Text('C'),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
              }, child: Text('D'),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
                firestore.updateData( );
              }, child: Text('E'),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage4()));
              }, child: Text('BOŞ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionPage4 extends StatefulWidget {
  const QuestionPage4({Key? key}) : super(key: key);

  @override
  State<QuestionPage4> createState() => _QuestionPage4State();
}

class _QuestionPage4State extends State<QuestionPage4> {
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
              'images/soru4.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 260,
            left: 295,
            child: Text(
                '2015 LYS-1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
              firestore.updateData( );
            }, child: Text('A'),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
            }, child: Text('B'),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
            }, child: Text('C'),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
            }, child: Text('D'),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
            }, child: Text('E'),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage5()));
            }, child: Text('BOŞ'),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

class QuestionPage5 extends StatefulWidget {
  const QuestionPage5({Key? key}) : super(key: key);

  @override
  State<QuestionPage5> createState() => _QuestionPage5State();
}

class _QuestionPage5State extends State<QuestionPage5> {
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
              'images/soru5.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 290,
            left: 295,
            child: Text(
                '2015 LYS-1',
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
              firestore.updateData( );
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
