import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({int noteNum, Color noteColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNum);
        },
        color: noteColor,
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
              this.buildKey(noteNum: 1, noteColor: Colors.red),
              this.buildKey(noteNum: 2, noteColor: Colors.orange),
              this.buildKey(noteNum: 3, noteColor: Colors.yellow),
              this.buildKey(noteNum: 4, noteColor: Colors.green),
              this.buildKey(noteNum: 5, noteColor: Colors.teal),
              this.buildKey(noteNum: 6, noteColor: Colors.blue),
              this.buildKey(noteNum: 7, noteColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
