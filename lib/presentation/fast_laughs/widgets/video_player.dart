// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// /// Stateful widget to fetch and then display video content.

// class FastLaughVideoPlayer extends StatefulWidget {
//   final String videoUrl;
//   const FastLaughVideoPlayer({super.key, required this.videoUrl});

//   @override
//   _FastLaughVideoPlayerState createState() => _FastLaughVideoPlayerState();
// }

// class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
//   // static const String sampleUrl =
//   //     "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

//   //  static const String url = "https://www.youtube.com/watch?v=CseAViVNfHI";
//   late VideoPlayerController _controller;
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {
//           _controller.play();
//         });
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GestureDetector(
//       onTap: () {
//         setState(() {
//           _controller.value.isPlaying
//               ? _controller.pause()
//               : _controller.play();
//         });
//       },
//       child: SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//             : const Center(child: CircularProgressIndicator()),
//       ),
//     ));
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  const FastLaughVideoPlayer({super.key, required this.videoUrl});

  @override
  FastLaughVideoPlayerState createState() => FastLaughVideoPlayerState();
}

class FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoUrl,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        },
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
