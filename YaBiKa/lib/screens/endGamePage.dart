import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
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
                    RaisedButton(child: Text("3    Doğru  "), onPressed: () {}, color: Colors.green,),
                    RaisedButton(child: Text("2    Yanlış   "), onPressed: () {}, color: Colors.red,),
                  ],
                ),

                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(child: Text("Tekrar Oyna"), onPressed: () {}),
                      RaisedButton(child: Text("  Anasayfa   "), onPressed: () {}),
                    ]
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
