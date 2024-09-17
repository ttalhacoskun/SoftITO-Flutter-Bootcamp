import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'follower_item_model.g.dart';

@JsonSerializable()
class FollowerItemModel {
  final String userName;
  final String avatar, description;
  final int followerCount, followingCount;
  @ColorConverter()
  final Color avatarBg;
  factory FollowerItemModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerItemModelFromJson(json);

  FollowerItemModel(this.userName, this.avatar, this.description,
      this.followerCount, this.followingCount, this.avatarBg);

  Map<String, dynamic> toJson() => _$FollowerItemModelToJson(this);
}

class ColorConverter extends JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
