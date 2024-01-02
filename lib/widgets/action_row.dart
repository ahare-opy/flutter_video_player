import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';

class ActionRow extends StatelessWidget {
  const ActionRow({super.key, required this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAction(
          context,
          Icons.favorite_border,
          'MASH ALLAH (${video.mash_allah / 1000}k)',
        ),
        _buildAction(
          context,
          Icons.thumb_up_outlined,
          'LIKE (${video.likes / 1000}k)',
        ),
        _buildAction(
          context,
          Icons.reply_outlined,
          'SHARE',
        ),
        _buildAction(
          context,
          Icons.flag_outlined,
          'REPORT',
        ),
      ],
    );
  }

  Widget _buildAction(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border:
              Border.all(width: 1.0, color: Color.fromARGB(255, 191, 194, 195)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16.0,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.black, fontSize: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
