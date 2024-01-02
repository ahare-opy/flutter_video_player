import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget(
      {required this.videoUrl, required this.onTap, super.key});

  final String videoUrl;
  final void Function() onTap;

  @override
  State<VideoPlayerWidget> createState() {
    return _VideoPlayerWidgetState();
  }
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializedVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _initializedVideoPlayerFuture =
        _videoPlayerController.initialize().then((value) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(false);
      //_videoPlayerController.setVolume(100);
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: _initializedVideoPlayerFuture,
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(
                  _videoPlayerController,
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        Positioned(
          top: 8.0,
          left: 8.0,
          child: GestureDetector(
            onTap: () {
              dispose();
              widget.onTap();
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(84, 234, 207, 207),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
