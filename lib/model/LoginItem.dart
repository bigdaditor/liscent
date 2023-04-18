import 'package:json_annotation/json_annotation.dart';

part 'LoginItem.g.dart';

@JsonSerializable()
class LoginItem {
  final String? userName;
  final String? platfrom;

  LoginItem({this.userName, this.platfrom});

  factory LoginItem.fromJson(Map<String, dynamic> json) => _$LoginItemFromJson(json);

  Map<String, dynamic> toJson() => _$LoginItemToJson(this);
}