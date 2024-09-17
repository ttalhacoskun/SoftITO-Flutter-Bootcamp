import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/assets.gen.dart';

class CompFollowerRowItem extends StatelessWidget {
  final String name;
  const CompFollowerRowItem({
    super.key,
    required this.name,
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
                    name,
                    style: const TextStyle(
                        color: Color(0xff141619),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  const Text(
                    'D-teams',
                    style: TextStyle(
                        color: Color(0xff141619),
                        fontWeight: FontWeight.w400,
                        fontSize: 19),

                    //
                  ),
                  const Text(
                    'systems',
                    style: TextStyle(
                        color: Color(0xff687684),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  const Text(
                    '277 members',
                    style: TextStyle(
                        color: Color(0xff687684),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )
                ],
              )),
          Flexible(
              child: ClipOval(child: Assets.images.noAvatarFollower.image()))
        ],
      ),
    );
  }
}
