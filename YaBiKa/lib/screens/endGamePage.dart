import 'package:flutter/material.dart';


void main() {
  runApp(EndGamePage());
}

class EndGamePage extends StatelessWidget {
  const EndGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('')),
        body: Center(
          child: Container(
            width: 300,
            height: 450,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(child: Text("3    Doğru  "), onPressed: () {}, style: ElevatedButton.styleFrom(
                      primary: Colors.green
                    ),),
                    ElevatedButton(child: Text("2    Yanlış   "), onPressed: () {}, style: ElevatedButton.styleFrom(
                      primary: Colors.red
                    ),),
                  ],
                ),

                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      ElevatedButton(child: Text("Tekrar Oyna"), onPressed: () {}),
                      ElevatedButton(child: Text("  Anasayfa   "), onPressed: () {}),
                    ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
