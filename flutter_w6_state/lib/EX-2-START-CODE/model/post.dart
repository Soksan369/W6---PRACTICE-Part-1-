import '../dto/post_dto.dart';

class Post {
  final int id;
  final String title;
  final String description;

  Post({required this.id, required this.title, required this.description});

  // Convert from PostDto to Post
  factory Post.fromDto(PostDto dto) {
    return Post(
      id: dto.id,
      title: dto.title,
      description: dto.body,
    );
  }

  // Convert JSON directly to Post
  factory Post.fromJson(Map<String, dynamic> json) {
    assert(json['id'] is int);
    assert(json['title'] is String);
    assert(json['body'] is String);

    return Post(
      id: json['id'],
      title: json['title'],
      description: json['body'],
    );
  }
}