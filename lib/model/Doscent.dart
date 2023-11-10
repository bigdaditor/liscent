class Doscent {
  final int exhibitionId;
  final String title;
  final String place;
  final String image;

  Doscent({
    required this.exhibitionId,
    required this.title,
    required this.place,
    required this.image,
  });

  factory Doscent.fromJson(Map<String, dynamic> json) {
    return Doscent(
        exhibitionId: json['exhibitionId'] as int,
        title: json['title'] as String,
        place: json['place'] as String,
        image: json['image'] as String
    );
  }
}
