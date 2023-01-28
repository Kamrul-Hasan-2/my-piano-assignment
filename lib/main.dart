import 'package:flutter/material.dart';

void main() => runApp(MyPianoApp());

class MyPianoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: null,
                onPressed: () {
                  //playSound();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
