import 'package:flutter/material.dart';
import 'package:twitter_clone/src/models/follower_item_model.dart';

class FollowerCountStore {
  static List<FollowerItemModel> follower = [
    FollowerItemModel('userName', 'avatar', 'description', 20, 10, Colors.blue),
    FollowerItemModel.fromJson({
      'userName': 'test',
      'avatar': 'avatar test',
      'description': 'aciklama',
      'followingCount': 123,
      'followerCount': 32,
      'avatarBg': Colors.red.value
    })
  ];
}
