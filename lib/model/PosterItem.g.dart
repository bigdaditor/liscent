// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PosterItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterList _$PosterListFromJson(Map<String, dynamic> json) => PosterList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => PosterItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PosterListToJson(PosterList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

PosterItem _$PosterItemFromJson(Map<String, dynamic> json) => PosterItem(
      image: json['image'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PosterItemToJson(PosterItem instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
    };
