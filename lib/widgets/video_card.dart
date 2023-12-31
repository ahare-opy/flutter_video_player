import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          video.thumbnail,
          height: 192.0,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
