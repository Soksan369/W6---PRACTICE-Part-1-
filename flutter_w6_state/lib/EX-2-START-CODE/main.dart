import 'package:flutter/material.dart';
import 'package:flutter_w6_state/EX-2-START-CODE/ui/providers/post_provider.dart';
import 'package:flutter_w6_state/EX-2-START-CODE/ui/screens/post_screen.dart';
import 'package:provider/provider.dart';
import 'repository/http_posts_repository.dart';
import 'repository/post_repository.dart';

void main() {
  PostRepository postRepo = HttpPostsRepository();

  runApp(
    ChangeNotifierProvider(
      create: (context) => PostsProvider(repository: postRepo),
      child: const MaterialApp(debugShowCheckedModeBanner: false,
      home: PostsScreen()),
    ),
  );
}