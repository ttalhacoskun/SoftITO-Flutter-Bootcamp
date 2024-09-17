import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/fonts.gen.dart';
import 'package:twitter_clone/src/models/follower_item_model.dart';

class CompFollowerRowItem extends StatelessWidget {
  final FollowerItemModel model;
  const CompFollowerRowItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Row(
        children: [
          Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.userName,
                    style: const TextStyle(
                        color: Color(0xff141619),
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.sFPro,
                        fontSize: 14),
                  ),
                  Text(
                    model.description,
                    style: const TextStyle(
                        color: Color(0xff141619),
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.sFPro,
                        fontSize: 19),

                    //
                  ),
                  Text(
                    '${model.followerCount.toString()} follower',
                    style: const TextStyle(
                        color: Color(0xff687684),
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.sFPro,
                        fontSize: 16),
                  ),
                  Text(
                    '${model.followingCount.toString()} following',
                    style: const TextStyle(
                        color: Color(0xff687684),
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.sFPro,
                        fontSize: 14),
                  )
                ],
              )),
          Flexible(
              child: ClipOval(
                  child: Container(
            color: model.avatarBg,
            height: 100,
            width: 100,
          )))
        ],
      ),
    );
  }
}
