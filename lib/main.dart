import 'package:flutter/material.dart';
import 'package:myapp/sarch.dart';

void main() {
  runApp(const MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "Search Page",
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
                      " What you want to search about ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    hintText: "search here",
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
                    return const Login();
                  }));
                });
              }),
              child: const Text(
                "Go to log in page",
                style: TextStyle(fontSize: 25, fontFamily: 'DancingScript'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
