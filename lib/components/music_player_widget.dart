import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayerWidget extends StatefulWidget {
  final String url;
  const MusicPlayerWidget({super.key, required this.url});

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  final AudioPlayer _player = AudioPlayer();

  void play() {
    _player.play(UrlSource(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.play_arrow),
      onPressed: play,
    );
  }
}
