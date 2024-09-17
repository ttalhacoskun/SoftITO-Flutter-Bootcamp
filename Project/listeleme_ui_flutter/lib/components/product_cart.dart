import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CompProductCard extends StatefulWidget {
  const CompProductCard({super.key});

  @override
  State<CompProductCard> createState() => _CompProductCardState();
}

class _CompProductCardState extends State<CompProductCard> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: AnimatedContainer(
          duration: 300.milliseconds,
          color: selected ? Colors.blue.withOpacity(.2) : Colors.white,
// duration: Duration(milliseconds: 300),
          width: double.infinity,
          height: 167,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFFDC83),
                          borderRadius: BorderRadius.circular(12)),
                      height: double.infinity,
                      width: 10,
                      child:
                          const Icon(Icons.photo_size_select_actual_rounded))),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Big & Small Fishes',
                          style: TextStyle(
                              color: Color(0xff1E222B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
