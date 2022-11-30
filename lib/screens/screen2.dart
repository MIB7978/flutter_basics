import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewScreen2 extends StatelessWidget {
  const NewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image.network(
            "https://st3.depositphotos.com/5934840/36099/v/1600/depositphotos_360992354-stock-illustration-text-book-and-trophy-block.jpg"),
      ),
    );
  }
}
