import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers_api.dart';

// void main() {
//   generateWordPairs().forEach(print);
// }

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int number) {
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Expanded Creatbutton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Creatbutton(Colors.redAccent, 1),
              Creatbutton(Colors.greenAccent, 2),
              Creatbutton(Colors.amberAccent, 3),
              Creatbutton(Colors.orangeAccent, 4),
              Creatbutton(Colors.yellowAccent, 5),
              Creatbutton(Colors.purpleAccent, 6),
              Creatbutton(Colors.greenAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
