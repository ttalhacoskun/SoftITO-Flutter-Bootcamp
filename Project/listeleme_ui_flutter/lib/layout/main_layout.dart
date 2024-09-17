import 'package:flutter/material.dart';

class LayoutMain extends StatefulWidget {
  final Widget content;
  const LayoutMain({super.key, required this.content});

  @override
  State<LayoutMain> createState() => _LayoutMainState();
}

class _LayoutMainState extends State<LayoutMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: widget.content,
              ))
        ],
      ),
    );
  }
}
