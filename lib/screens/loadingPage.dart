import 'package:flutter/material.dart';

void main() {
  runApp(LoadingPage());
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('')),
        body: Center(
          child: Container(
            width: 3000,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 0.1,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://st.myideasoft.com/idea/az/58/myassets/std_theme_files/tpl-offisio/assets/uploads/nopic_image.gif?revision=1636533897')),
            ),
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            child: Text(
              'Yükleniyor...',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
