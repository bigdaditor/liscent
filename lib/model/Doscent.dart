class Doscent {
  String title;
  String place;
  String image;
  String exhibitionId;

  Doscent.fromJson(Map<String, dynamic> json) :
    exhibitionId = json['exhibitionId'],
    title = json['title'],
    place = json['place'],
    image = json['image'];
}
