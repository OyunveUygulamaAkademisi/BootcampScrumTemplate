import 'package:yabika/screens/englishPage.dart';
import 'package:yabika/screens/geoPage.dart';
import 'package:yabika/screens/loginPage.dart';
import 'package:yabika/screens/mainPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';
import 'package:flutter/material.dart';
import 'package:yabika/screens/religionPage.dart';
import 'package:yabika/screens/sciencePage.dart';
import 'package:yabika/screens/turkishPage.dart';

void main() => runApp(Lessons());

class Lessons extends StatefulWidget {
  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {


  Future loaded() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    await ElevatedButton
      (onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage()));
    },
      child: null,);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Matematik testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuestionPage()
                )
                );
              }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lessons2 extends StatefulWidget {
  const Lessons2({Key? key}) : super(key: key);

  @override
  State<Lessons2> createState() => _Lessons2State();
}

class _Lessons2State extends State<Lessons2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fen testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SciencePage()
                    )
                    );
                  }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lessons3 extends StatefulWidget {
  const Lessons3({Key? key}) : super(key: key);

  @override
  State<Lessons3> createState() => _Lessons3State();
}

class _Lessons3State extends State<Lessons3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('İngilizce testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const EnglishPage()
                    )
                    );
                  }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lessons4 extends StatefulWidget {
  const Lessons4({Key? key}) : super(key: key);

  @override
  State<Lessons4> createState() => _Lessons4State();
}

class _Lessons4State extends State<Lessons4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Türkçe testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const TurkishPage()
                    )
                    );
                  }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lessons5 extends StatefulWidget {
  const Lessons5({Key? key}) : super(key: key);

  @override
  State<Lessons5> createState() => _Lessons5State();
}

class _Lessons5State extends State<Lessons5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coğrafya testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const GeographyPage()
                    )
                    );
                  }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lessons6 extends StatefulWidget {
  const Lessons6({Key? key}) : super(key: key);

  @override
  State<Lessons6> createState() => _Lessons6State();
}

class _Lessons6State extends State<Lessons6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Din testi'),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
          },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReligionPage()
                    )
                    );
                  }, child: const Text('Başla !')
              ),
            ],
          ),
        ),
      ),
    );
  }
}


