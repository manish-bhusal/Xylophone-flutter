import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget playSound({Color colour, int soundNumber}) {
    return Expanded(
      child: Container(
        color: colour,
        child: TextButton(
            onPressed: (() async {
              final player = AudioPlayer();
              await player.play(
                AssetSource("note$soundNumber.wav"),
              );
            }),
            child: null),
      ),
    );
  }

  const XylophoneApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            playSound(colour: Colors.red, soundNumber: 1),
            playSound(colour: Colors.yellow, soundNumber: 2),
            playSound(
                colour: Color.fromARGB(255, 25, 245, 142), soundNumber: 3),
            playSound(colour: Colors.blue, soundNumber: 4),
            playSound(colour: Colors.purple, soundNumber: 5),
            playSound(colour: Colors.pink, soundNumber: 6),
            playSound(colour: Colors.green, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
