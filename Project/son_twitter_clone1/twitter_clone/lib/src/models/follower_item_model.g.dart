// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowerItemModel _$FollowerItemModelFromJson(Map<String, dynamic> json) =>
    FollowerItemModel(
      json['userName'] as String,
      json['avatar'] as String,
      json['description'] as String,
      json['followerCount'] as int,
      json['followingCount'] as int,
      const ColorConverter().fromJson(json['avatarBg'] as int),
    );

Map<String, dynamic> _$FollowerItemModelToJson(FollowerItemModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'avatar': instance.avatar,
      'description': instance.description,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'avatarBg': const ColorConverter().toJson(instance.avatarBg),
    };
