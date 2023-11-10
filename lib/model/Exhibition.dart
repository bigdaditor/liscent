class Exhibition {
  final int id;
  final String title;
  final String subTitle;
  final String start;
  final String end;
  final String holiday;
  final String place;
  final String image;

  Exhibition({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.start,
    required this.end,
    required this.holiday,
    required this.place,
    required this.image
  });

  factory Exhibition.fromJson(Map<String, dynamic> json) {
    return Exhibition(
        id: json['id'] as int,
        title: json['title'] as String,
        subTitle: json['subTitle'] as String,
        start: json['start'] as String,
        end: json['end'] as String,
        holiday: json['holiday'] as String,
        place: json['place'] as String,
        image: json['image'] as String,
    );
  }
}