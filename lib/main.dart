import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/screens/screen1.dart';
import 'package:flutter_learn_basics/screens/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewScreen2(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Press"),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return SecondPage();
              }))
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
