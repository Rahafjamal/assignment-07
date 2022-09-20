import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "Log in Page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'DancingScript',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 150,
            image: AssetImage('images/1.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      " User name",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Enter valid mail",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[300],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      " Password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: "enter your secure password",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[300],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Home();
                  }));
                });
              }),
              child: const Text(
                "Go to Search page",
                style: TextStyle(fontSize: 25, fontFamily: 'DancingScript'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
