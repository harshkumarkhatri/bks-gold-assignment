import 'dart:developer';

import 'package:bksgold_assignment/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogSignUp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const CircleAvatar(
                radius: 90,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZILQdcAimYV79fZ5pkR2F8YefkZQNtTzMtQ&usqp=CAU'),
              ),
//              margin: EdgeInsets.all(20),
//              constraints: BoxConstraints(
//                  maxWidth: 200, maxHeight: 200, minHeight: 200, minWidth: 200),
////              width: 20,
////              height: 20
//              decoration: BoxDecoration(
//                  border: Border.all(),
//                  shape: BoxShape.circle,
//                  image: DecorationImage(
//                    image: NetworkImage(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZILQdcAimYV79fZ5pkR2F8YefkZQNtTzMtQ&usqp=CAU'),
//                    fit: BoxFit.fill,
//                  )),
//              child:
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  top: 50, right: 10, left: 10, bottom: 10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  helperText: "Enter your username",
                  icon: Icon(Icons.account_circle),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    helperText: "Enter your password",
                    icon: Icon(Icons.lock)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(
//                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogSignUp extends StatelessWidget {
  const LogSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                  ),
                  Text(
                    "Login UI",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(160),
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              child: const CircleAvatar(
                radius: 55,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZILQdcAimYV79fZ5pkR2F8YefkZQNtTzMtQ&usqp=CAU'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                  ),
                  Text(
                    "New user",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Signin with Google:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                signInWithGoogle();
              },
              child: Text(
                "Signin",
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => SignUpPage()));
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(18),
            //       gradient: const LinearGradient(
            //         colors: <Color>[
            //           Color(0xFF0D47A1),
            //           Color(0xFF1976D2),
            //           Color(0xFF42A5F5),
            //         ],
            //       ),
            //     ),
            //     padding: const EdgeInsets.all(18),
            //     child: const Text(
            //       "Sign Up",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   child: const Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       Padding(
            //         padding: EdgeInsets.only(top: 10),
            //       ),
            //       Text(
            //         "Already have an account",
            //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
            //       )
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const LoginPage()));
            //   },
            //   // shape: RoundedRectangleBorder(
            //   //   borderRadius: BorderRadius.circular(18),
            //   //   side: BorderSide(color: Colors.blue),
            //   // ),
            //   // textColor: Colors.white,
            //   // padding: EdgeInsets.all(0),
            //   child: Container(
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(18),
            //       gradient: const LinearGradient(
            //         colors: <Color>[
            //           Color(0xFF0D47A1),
            //           Color(0xFF1976D2),
            //           Color(0xFF42A5F5),
            //         ],
            //       ),
            //     ),
            //     padding: const EdgeInsets.all(18),
            //     child: const Text(
            //       "Login",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    log("Credentials are $credential");

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
