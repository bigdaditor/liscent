import 'package:json_annotation/json_annotation.dart';

part 'PosterItem.g.dart';

@JsonSerializable()
class PosterList {
  List<PosterItem>? list;

  PosterList({
    required this.list,
  });

  factory PosterList.fromJson(Map<String, dynamic> json) =>
      _$PosterListFromJson(json);

  Map<String, dynamic> toJson() => _$PosterListToJson(this);
}

@JsonSerializable()
class PosterItem {
  String? image;
  String? name;

  PosterItem({
    required this.image,
    required this.name,
  });

  factory PosterItem.fromJson(Map<String, dynamic> json) =>
      _$PosterItemFromJson(json);

  Map<String, dynamic> toJson() => _$PosterItemToJson(this);
}