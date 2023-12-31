import 'package:flutter/material.dart';
import 'package:flutter_video_player/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            final video = videos[index];
            return VideoCard(video: video);
          }))
        ],
      ),
    );
  }
}

/*
  
 */