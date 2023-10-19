import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          "Sign Up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Container(
//              width: 160,
              alignment: Alignment.center,
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(50),
//                border: Border.all(
//                  color: Colors.red,
//                  width: 2
//                )
//              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZILQdcAimYV79fZ5pkR2F8YefkZQNtTzMtQ&usqp=CAU'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
//                  Hint text is displayed when we click on the text field.
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    icon: Icon(Icons.people)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
//                  Hint text is displayed when we click on the text field.
                    hintText: "Enter your username",
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    icon: Icon(Icons.account_circle)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
//                  Hint text is displayed when we click on the text field.
                    hintText: "Enter your email",
                    border: OutlineInputBorder(),
                    labelText: "E-mail",
                    icon: Icon(Icons.mail)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                readOnly: false,
                decoration: InputDecoration(
//                  Hint text is displayed when we click on the text field.
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    icon: Icon(Icons.lock)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(
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
                padding: const EdgeInsets.all(10),
                child: const Text("Submit", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
