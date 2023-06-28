import 'package:flutter/material.dart';
import '../formats/comment.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return CommentData.createComment();
  }
}
