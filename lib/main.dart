import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_video_player/data.dart';
import 'package:flutter_video_player/screens/home_screen.dart';
import 'package:flutter_video_player/screens/video_screen.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  // This widget is the root of your application.
  String activeScreen = 'home-screen';
  late Video selectedVideo;

  Future<List<Video>> videsFuture = fetchVideo();

  void switchScreen(Video video) {
    setState(() {
      selectedVideo = video;
      activeScreen = 'video-screen';
    });
  }

  void switchScreenN() {
    setState(() {
      activeScreen = 'home-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Video Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: FutureBuilder(
        future: videsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            final videos = snapshot.data!;
            Widget screenWidget = HomeScreen(
              onTap: switchScreen,
              videos: videos,
            );

            if (activeScreen == 'video-screen') {
              screenWidget = VideoScreen(
                onTap: switchScreenN,
                video: selectedVideo,
              );
            }

            return screenWidget;
          } else {
            return const Text("No data available");
          }
        },
      ),
    );
  }
}
