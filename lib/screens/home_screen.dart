import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_video_player/data.dart';
import 'package:flutter_video_player/widgets/custom_app_bar.dart';
import 'package:flutter_video_player/widgets/video_card.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.onTap, required this.videos});

  final void Function(Video video) onTap;
  final List<Video> videos;

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  //late Future<Video> futureVideo;

  @override
  void initState() {
    super.initState();
    //futureVideo = fetchVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final video = widget.videos[index];
                return VideoCard(
                  video: video,
                  onTap: widget.onTap,
                );
              },
              childCount: widget.videos.length,
            ),
          ),
        ],
      ),
    );
  }
}

/*
  
 */