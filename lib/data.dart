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
}
