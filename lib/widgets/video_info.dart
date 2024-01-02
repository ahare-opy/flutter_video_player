import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({super.key, required this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          video.title,
          style: const TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
