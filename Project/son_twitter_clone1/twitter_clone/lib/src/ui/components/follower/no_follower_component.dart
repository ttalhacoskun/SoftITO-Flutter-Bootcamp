import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompNoFollower extends StatelessWidget {
  const CompNoFollower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE7ECF0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You haven’t created or\nsubscribed to any Lists',
            style: TextStyle(
                color: Color(0xff141619),
                fontWeight: FontWeight.w900,
                fontSize: 22),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'When you do, it’ll show up here.',
            style: TextStyle(color: Color(0xff687684), fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {},
              child: const Text(
                'Create a List',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ))
        ],
      ),
    );
  }
}
