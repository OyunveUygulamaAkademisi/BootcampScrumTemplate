import 'package:yabika/screens/loginPage.dart';
import 'package:yabika/screens/profilePage.dart';
import 'package:yabika/screens/questsPage.dart';
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuestionPage()
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
