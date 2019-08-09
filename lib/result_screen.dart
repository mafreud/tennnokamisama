import 'package:flutter/material.dart';
import 'input_screen.dart';

class ResultScreen extends StatefulWidget {
  final int number;
  final String candidate1;
  final String candidate2;
  ResultScreen(this.number, this.candidate1, this.candidate2);
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('神の思し召し'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${widget.number}人の神が'),
            Text(
              '${(widget.number % 2 == 0) ? widget.candidate1 : widget.candidate2}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text('がいいと教えてくれています！')
          ],
        ),
      ),
    );
  }
}
