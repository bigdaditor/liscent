class Tag {
  final int id;
  final String title;
  final int like;

  Tag({
    required this.id,
    required this.title,
    required this.like
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
        id: json['id'] as int,
        title: json['title'] as String,
        like: json['like'] as int
    );
  }
}
