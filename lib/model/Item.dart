class Item {
  String? title;
  String? subTitle;
  String? start;
  String? end;
  String? holiday;
  String? image;

  Item({
    this.title,
    this.subTitle,
    this.start,
    this.end,
    this.holiday,
    this.image,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    title: json['title'],
    subTitle: json['subTitle'],
    start: json['start'],
    end: json['end'],
    holiday: json['holiday'],
    image: json['image']
  );
}