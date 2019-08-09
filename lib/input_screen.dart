import 'package:flutter/material.dart';
import 'result_screen.dart';
import 'dart:math';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String candidate1;
  String candidate2;
  int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tennno Kamisama'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                candidate1 = value;
              },
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: '候補1を入力'),
            ),
            TextField(
              onChanged: (value) {
                candidate2 = value;
              },
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: '候補2を入力'),
            ),
            RaisedButton(
                child: Text('神に祈る'),
                onPressed: () {
                  Random rnd;
                  int min = 1;
                  int max = 100;
                  rnd = new Random();
                  number = min + rnd.nextInt(max - min);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ResultScreen(number, candidate1, candidate2),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
