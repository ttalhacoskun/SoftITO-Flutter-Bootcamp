// import 'package:flutter/material.dart';

// class VideoDetailPage extends StatefulWidget {
//   const VideoDetailPage({super.key});

//   @override
//   State<VideoDetailPage> createState() => _VideoDetailPageState();
// }

// class _VideoDetailPageState extends State<VideoDetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('eğitim'),
//       ),
//       body: SafeArea(child: Text('KEDİ EĞİTİMİ')),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:video/Model/video_data.dart';
import 'package:video/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  final VideoData videodata;

  const VideoDetailPage({Key? key, required this.videodata}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eğitim Detayı'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              YoutubePlayer(
                controller: widget.videodata.controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.videodata.additionalText,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  widget.videodata.text,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
