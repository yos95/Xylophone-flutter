import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void player(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    Expanded buildKey({Color color, int numberPlay}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            player(numberPlay);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, numberPlay: 1),
              buildKey(color: Colors.yellow, numberPlay: 2),
              buildKey(color: Colors.green, numberPlay: 3),
              buildKey(color: Colors.orange, numberPlay: 4),
              buildKey(color: Colors.purple, numberPlay: 5),
              buildKey(color: Colors.blue, numberPlay: 6),
              buildKey(color: Colors.teal, numberPlay: 7),
            ],
          ),
        ),
      ),
    );
  }
}
