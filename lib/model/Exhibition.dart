class Exhibition {
  String title;
  String subTitle;
  String start;
  String end;
  String holiday;
  String place;
  String image;

  Exhibition.fromJson(Map<String, dynamic> json) :
    title = json['title'],
    subTitle = json['subTitle'],
    start = json['start'],
    end = json['end'],
    holiday = json['holiday'],
    place = json['place'],
    image = json['image'];
}