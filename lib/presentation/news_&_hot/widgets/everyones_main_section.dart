import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/video_section.dart';
import 'package:netflix_clone/presentation/widgets/textbutton_with_icon.dart';

class EveryOnesMainSection extends StatelessWidget {
  const EveryOnesMainSection(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.discription});
  final String? title;
  final String? imageUrl;
  final String? discription;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: size.width,
        height: size.width * 0.99,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "No title",
              maxLines: 1,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            spaceHeight5,
            Text(
              discription ?? "No Description",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: greyColor),
            ),
            spaceHeight20,
            Expanded(
              child: VideoSection(
                width: double.infinity,
                url: imageUrl ?? "",
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title ?? "No title",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 7),
                  ),
                ),
                const TextButtonWithIcon(
                  icon: Icons.telegram_outlined,
                  title: "Share",
                  iconSize: 30,
                ),
                const TextButtonWithIcon(
                  icon: Icons.add,
                  title: "My List",
                  iconSize: 30,
                ),
                const TextButtonWithIcon(
                  icon: Icons.play_arrow,
                  title: "Play",
                  iconSize: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
