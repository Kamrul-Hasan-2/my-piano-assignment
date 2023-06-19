import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyPianoApp());

class MyPianoApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: null,
        onPressed: () {
          playSound(soundNumber!);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              buildKey(color: Colors.red, soundNumber:1),
              buildKey(color: Colors.orange, soundNumber:2),
              buildKey(color: Colors.pink, soundNumber:3),
              buildKey(color: Colors.teal, soundNumber:4),
              buildKey(color: Colors.green, soundNumber:5),
              buildKey(color: Colors.purpleAccent, soundNumber:6),
              buildKey(color: Colors.yellow, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
