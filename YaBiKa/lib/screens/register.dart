import 'package:bootcamp_project/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(RegisterPage());

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Kayıt ol'),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Divider(),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.cyan,
                        hintText: "İsim",
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.cyan,
                        hintText: "Soyisim",
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.cyan,
                        hintText: "E-mail",
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.cyan,
                        hintText: "Şifre",
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.cyan,
                        hintText: "Şifre tekrar",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=> const LoginPage()
                    ),
                    );
                  }, child: const Text('Kayıt ol'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      minimumSize: const Size(200,40),
                      alignment: Alignment.center,
                    ),)
                ],
              ),
            )
        )
    );
  }
}



