import 'package:bootcamp_project/screens/login.dart';
import 'package:bootcamp_project/screens/profile.dart';
import 'package:bootcamp_project/screens/quests.dart';
import 'package:flutter/material.dart';

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
        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionPage1()));
    },
      child: null,);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          leading: IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
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
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginUI()
                )
                );
              },
              child: const Text('Profile Screen')
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuestionPage1()
                )
                );
              }, child: const Text('Questions')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
