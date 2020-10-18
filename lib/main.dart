// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: buttons(),
        ),
      ),
    );
  }
}

Widget buttons() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      note(1, Colors.red.shade300),
      note(2, Colors.orange.shade300),
      note(3, Colors.yellow.shade600),
      note(4, Colors.green.shade400),
      note(5, Colors.green.shade800),
      note(6, Colors.blue.shade300),
      note(7, Colors.purple.shade300),
    ],
  );
}

Widget note(int noteNumber, Color color) {
  return Expanded(
    child: FlatButton(
      padding: EdgeInsets.only(bottom: 5),
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$noteNumber.wav');
      },
      child: SizedBox(),
    ),
  );
}
