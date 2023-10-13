// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/fast_and_laugh/model/fast_laugh_model.dart';
import 'package:netflix_clone/presentation/fast_laughs/widgets/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final DownloadsModel movieData;
  final FastLaughModel videoUrl;
  // final String videoUrl;
  const VideoListItemInheritedWidget(
      {super.key,
      required this.movieData,
      required this.videoUrl,
      required this.widget})
      : super(child: widget);

  @override
  bool updateShouldNotify(VideoListItemInheritedWidget oldWidget) {
    return movieData != oldWidget.movieData && videoUrl != oldWidget.videoUrl;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  // final int index;

  @override
  Widget build(BuildContext context) {
    final image = VideoListItemInheritedWidget.of(context)!.movieData;
    final dpImage = image.posterPathUrl;

    final video = VideoListItemInheritedWidget.of(context)!.videoUrl;
    final videoUrl = video.videoKey;
    // String url =
    //  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

    return Stack(
      children: [
        videoMainSection(videoUrl),
        muteIconSection(),
        videoActionSection(dpImage),
      ],
    );
  }

  Widget videoMainSection(videoUrl) {
    log("just before calling videoplayer");
    return FastLaughVideoPlayer(videoUrl: videoUrl);

    // return Container(
    //   color: Colors.accents[index % Colors.accents.length],
    // );
  }

  Row videoActionSection(dpImage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage:
                    dpImage == null ? null : NetworkImage(dpImage)),
            videoActionContent(icon: Icons.favorite, title: "LOL"),
            videoActionContent(icon: Icons.add, title: "My List"),
            videoActionContent(icon: Icons.share, title: "Share"),
            videoActionContent(icon: Icons.play_arrow, title: "Play")
          ],
        ),
      ],
    );
  }

  Padding videoActionContent({required IconData icon, required String title}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Row muteIconSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: blackColor.withOpacity(0.3),
              radius: 27,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_off),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
