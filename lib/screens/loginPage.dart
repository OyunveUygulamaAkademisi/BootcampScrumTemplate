import 'package:firebase_auth/firebase_auth.dart';
import 'package:yabika/screens/registerPage.dart';
import 'package:yabika/screens/mainPage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var email = '';

  girisYap() {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: t1.text,
        password: t2.text)
        .then((users){
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=> MainPage()
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal:20.0),
                  child: Column(
                    children: const [
                      Text(
                          "Giriş yap",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 43.0,
                            fontWeight: FontWeight.w800,
                          )
                      ),
                      Text(
                        "Hoşgeldiniz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 5,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: t1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: const Color(0xFFe7edeb),
                            hintText: "E-mail",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: t2,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: const Color(0xFFe7edeb),
                              hintText: "Şifre",
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.grey[600],
                              ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Center(
                        // It navigates and deletes the history to prevent to go back login.
                        child: ElevatedButton(
                            onPressed: girisYap,
                            child: const Text('Giriş yap'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan,
                              minimumSize: const Size(200,40),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage()
                            ),
                            );
                          }, child: const Text('Kayıt ol'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              minimumSize: const Size(200,40),
                              alignment: Alignment.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
