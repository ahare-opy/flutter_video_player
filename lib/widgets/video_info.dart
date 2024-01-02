import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';
import 'package:flutter_video_player/widgets/comment_widget.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_video_player/widgets/action_row.dart';
import 'package:flutter_video_player/widgets/author_info.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({super.key, required this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            video.title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            '${video.viewers} views • ${timeago.format(DateTime.parse(video.date_and_time))}',
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ActionRow(video: video),
          const SizedBox(
            height: 16.0,
          ),
          AuthorInfo(
            video,
          ),
          const Divider(),
          const SizedBox(
            height: 16.0,
          ),
          CommentWidget(video: video),
        ],
      ),
    );
  }
}
