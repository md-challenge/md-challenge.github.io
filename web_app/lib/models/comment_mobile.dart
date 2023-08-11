import 'package:flutter/material.dart';
import '../formats/comment_mobile.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(CommentData.padding),
          child: CommentData.createComment(context),
        ),
      ],
    );
  }
}
