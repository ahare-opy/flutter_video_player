import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Video>> fetchVideo() async {
  final response = await http.get(
      Uri.parse('https://test-ximit.mahfil.net/api/trending-video/1?page=1'));

  if (response.statusCode == 200) {
    var object = jsonDecode(response.body);
    List<Video> videos = [];

    for (var i = 0; i < object['results'].length; i++) {
      try {
        videos
            .add(Video.fromJson(object['results'][i] as Map<String, dynamic>));
      } catch (e) {
        print('$i -> $e');
      }
    }

    return videos;
  } else {
    throw Exception('Failed to load videos');
  }
}

class Video {
  final String thumbnail;
  final int id;
  final String title;
  final String date_and_time;
  final String slug;
  final String created_at;
  final String manifest;
  final int live_status;
  final bool is_live;
  final String channel_image;
  final String channel_name;
  final String channel_username;
  final bool is_verified;
  final String channel_slug;
  final String channel_subscriber;
  final int channel_id;
  final String type;
  final String viewers;
  final String duration;
  final String object_type;

  const Video({
    required this.thumbnail,
    required this.id,
    required this.title,
    required this.date_and_time,
    required this.slug,
    required this.created_at,
    required this.manifest,
    required this.live_status,
    required this.is_live,
    required this.channel_image,
    required this.channel_name,
    required this.channel_username,
    required this.is_verified,
    required this.channel_slug,
    required this.channel_subscriber,
    required this.channel_id,
    required this.type,
    required this.viewers,
    required this.duration,
    required this.object_type,
  });

  set state(Video state) {}

  factory Video.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'thumbnail': String thumbnail,
        'id': int id,
        'title': String title,
        'date_and_time': String date_and_time,
        'slug': String slug,
        'created_at': String created_at,
        'manifest': String manifest,
        'live_status': int live_status,
        'is_live': bool is_live,
        'channel_image': String channel_image,
        'channel_name': String channel_name,
        'channel_username': String channel_username,
        'is_verified': bool is_verified,
        'channel_slug': String channel_slug,
        'channel_subscriber': String channel_subscriber,
        'channel_id': int channel_id,
        'type': String type,
        'viewers': String viewers,
        'duration': String duration,
        'object_type': String object_type
      } =>
        Video(
            thumbnail: thumbnail,
            id: id,
            title: title,
            date_and_time: date_and_time,
            slug: slug,
            created_at: created_at,
            manifest: manifest,
            live_status: live_status,
            is_live: is_live,
            channel_image: channel_image,
            channel_name: channel_name,
            channel_username: channel_username,
            is_verified: is_verified,
            channel_slug: channel_slug,
            channel_subscriber: channel_subscriber,
            channel_id: channel_id,
            type: type,
            viewers: viewers,
            duration: duration,
            object_type: object_type),
      _ => throw const FormatException('Failed to load video.'),
    };
  }
}


/*
  
*/