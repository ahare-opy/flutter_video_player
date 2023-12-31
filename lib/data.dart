import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

/*
Future<Video> fetchVideo() async {
  final response = await http.get(
      Uri.parse('https://test-ximit.mahfil.net/api/trending-video/1?page=1'));

  if (response.statusCode == 200) {
    return Video.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load videos');
  }
}
*/
class Video {
  final String thumbnail;
  final int id;
  final String title;
  final String date_and_time;
  final String slug;
  final String created_at;
  final String manifest;
  final int live_status;
  final String live_manifest;
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
    required this.live_manifest,
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

/*
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
        'live_manifest': String live_manifest,
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
            live_manifest: live_manifest,
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
  }*/
}

final List<Video> videos = [
  const Video(
    thumbnail:
        'https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_U9CYT0rvkv_1920x1080_PNG.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T210323Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=1e8085a1e473c953f1771a44c31580031ae4f54c211fd2a32a80ecfeca1ce68e',
    id: 278,
    title:
        'সে যদি দুই রাকাত নামাজ পড়ে_Abu Taha Muhammad Adnan__Message of Life_',
    date_and_time: '2023-12-26T18:32:00+06:00',
    slug: 'Abu-Taha-Muhammad-Adnan__Message-of-Life_',
    created_at: '2023-12-26T18:32:26.588032+06:00',
    manifest:
        'https://bycwknztmq.gpcdn.net/a80b4d4e-b023-4ad8-8ed7-7671f6b3018b/playlist.m3u8',
    live_status: 1,
    live_manifest: '.',
    is_live: false,
    channel_image:
        'https://mahfilbucket.s3.amazonaws.com/media_test/channel_image/mob_image_M71gtbYNUE_5.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T210323Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=54cce0d5ee6328e3147f1ac71db37803b27431a41942ddd84e9bf11a5be4a559',
    channel_name: 'Sakib Live TV',
    channel_username: 'sakiblivetv',
    is_verified: false,
    channel_slug: 'sakib-live-tv',
    channel_subscriber: '14',
    channel_id: 16,
    type: 'Others',
    viewers: '44',
    duration: '00:30',
    object_type: 'video',
  ),
  const Video(
    thumbnail:
        'https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_U9CYT0rvkv_1920x1080_PNG.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T210323Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=1e8085a1e473c953f1771a44c31580031ae4f54c211fd2a32a80ecfeca1ce68e',
    id: 278,
    title:
        'সে যদি দুই রাকাত নামাজ পড়ে_Abu Taha Muhammad Adnan__Message of Life_',
    date_and_time: '2023-12-26T18:32:00+06:00',
    slug: 'Abu-Taha-Muhammad-Adnan__Message-of-Life_',
    created_at: '2023-12-26T18:32:26.588032+06:00',
    manifest:
        'https://bycwknztmq.gpcdn.net/a80b4d4e-b023-4ad8-8ed7-7671f6b3018b/playlist.m3u8',
    live_status: 1,
    live_manifest: '.',
    is_live: false,
    channel_image:
        'https://mahfilbucket.s3.amazonaws.com/media_test/channel_image/mob_image_M71gtbYNUE_5.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T210323Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=54cce0d5ee6328e3147f1ac71db37803b27431a41942ddd84e9bf11a5be4a559',
    channel_name: 'Sakib Live TV',
    channel_username: 'sakiblivetv',
    is_verified: false,
    channel_slug: 'sakib-live-tv',
    channel_subscriber: '14',
    channel_id: 16,
    type: 'Others',
    viewers: '44',
    duration: '00:30',
    object_type: 'video',
  ),
];
