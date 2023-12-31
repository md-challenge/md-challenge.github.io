import 'package:flutter/material.dart';
import '../formats/comment.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommentData.createComment(context),
      ],
    );
  }
}
