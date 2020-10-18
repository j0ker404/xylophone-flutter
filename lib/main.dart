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
      note(noteNumber: 1, color: Colors.red.shade300),
      note(noteNumber: 2, color: Colors.orange.shade300),
      note(noteNumber: 3, color: Colors.yellow.shade600),
      note(noteNumber: 4, color: Colors.green.shade400),
      note(noteNumber: 5, color: Colors.green.shade800),
      note(noteNumber: 6, color: Colors.blue.shade300),
      note(noteNumber: 7, color: Colors.purple.shade300),
    ],
  );
}

Widget note({int noteNumber, Color color}) {
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
