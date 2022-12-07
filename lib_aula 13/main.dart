import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

AudioPlayer audioPlayer = AudioPlayer();
AudioCache audioCache = AudioCache(prefix: "sound/");

void playPause(bool state) {
  (state)
      ? audioPlayer.play(DeviceFileSource("assets/sound/bjork - possibly maybe.mp3"))
      : audioPlayer.pause();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      home: MyPlayer(),
    );
  }
}

class MyPlayer extends StatefulWidget {
  const MyPlayer({Key? key}) : super(key: key);

  @override
  State<MyPlayer> createState() => _MyPlayerState();
}

bool _valueSwitch = false;
String _playerState = "PAUSE";

class _MyPlayerState extends State<MyPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _valueSwitch,
              onChanged: ((param) {
                setState(() {
                  _valueSwitch = !_valueSwitch;
                  (_valueSwitch)
                      ? _playerState = "PLAY"
                      : _playerState = "PAUSE";

                  playPause(_valueSwitch);
                });
              }),
            ),
            Text(
              _playerState,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
