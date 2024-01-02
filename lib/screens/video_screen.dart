import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';
import 'package:flutter_video_player/widgets/video_info.dart';
import 'package:flutter_video_player/widgets/video_player_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key, required this.onTap, required this.video});

  final void Function() onTap;
  final Video video;

  @override
  State<VideoScreen> createState() {
    return _VideoScreen();
  }
}

class _VideoScreen extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 44.0),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: VideoPlayerWidget(
                videoUrl: widget.video.manifest,
                onTap: widget.onTap,
              ),
            ),
            //VideoInfo(video: widget.video),
          ],
        ),
      ),
    );
  }
}
