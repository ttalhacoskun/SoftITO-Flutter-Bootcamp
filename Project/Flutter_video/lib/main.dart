import 'package:flutter/material.dart';
import 'package:video/Model/video_data.dart';
import 'package:video/View/video_view_list.dart';
import 'package:video/View/video_detail_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyVideoScreen(),
    );
  }
}
