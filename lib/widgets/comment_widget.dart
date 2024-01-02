import 'package:flutter/material.dart';
import 'package:flutter_video_player/data.dart';
import 'package:flutter_video_player/widgets/comment_input_field.dart';
import 'package:flutter_video_player/widgets/comment_view.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({required this.video, super.key});

  final Video video;

  @override
  State<CommentWidget> createState() {
    return _CommentWidget();
  }
}

class _CommentWidget extends State<CommentWidget> {
  bool isComment = false;
  String comment = '';

  void showComment(String ccomment) {
    setState(() {
      isComment = true;
      comment = ccomment;
      print(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget showCommentWidget = Container(
      child: Text(''),
    );

    if (isComment) {
      showCommentWidget = CommentView(
        imageUrl:
            'https://img-new.cgtrader.com/items/3579119/b0c7a67e96/large/flutter-dash-3d-model-animated-obj-fbx-stl-blend.jpg',
        time: DateTime.parse('2023-06-02 22:34:19.958057'),
        name: 'Flutter',
        comment: comment,
      );
    }

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comments 7.5k',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            Icon(
              Icons.unfold_more_outlined,
              size: 18.0,
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommentInputField(
          showComment: showComment,
        ),
        const SizedBox(
          height: 12.0,
        ),
        Container(
          child: showCommentWidget,
        ),
      ],
    );
  }
}
