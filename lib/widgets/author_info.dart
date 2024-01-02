import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo(this.video);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(video.channel_image),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                video.channel_name,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '${video.channel_subscriber} subscribers',
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Subscribe',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
