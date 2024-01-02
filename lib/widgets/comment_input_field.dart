import 'package:flutter/material.dart';

class CommentInputField extends StatefulWidget {
  const CommentInputField({super.key, required this.showComment});

  final void Function(String comment) showComment;

  @override
  State<CommentInputField> createState() {
    return _CommentInputField();
  }
}

class _CommentInputField extends State<CommentInputField> {
  String commentText = '';

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: _textController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Add Comment',
          ),
        ),
        Positioned(
          top: 8.0,
          bottom: 8.0,
          right: 8.0,
          child: GestureDetector(
            onTap: () {
              commentText = (_textController.text);
              widget.showComment(commentText);
              _textController.clear();
            },
            child: const Icon(
              Icons.play_arrow_outlined,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
