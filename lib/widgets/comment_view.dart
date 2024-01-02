import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentView extends StatelessWidget {
  const CommentView(
      {required this.imageUrl,
      required this.time,
      required this.name,
      required this.comment,
      super.key});

  final String imageUrl;
  final DateTime time;
  final String name;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    timeago.format(time),
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                comment,
                style: const TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
