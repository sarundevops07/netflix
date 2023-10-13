import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/video_section.dart';
import 'package:netflix_clone/presentation/widgets/textbutton_with_icon.dart';

class MainSectionOfComingSoon extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String date;
  final String month;
  final String discription;

  const MainSectionOfComingSoon(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.date,
      required this.discription,
      required this.month});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dateSection(size),
        allOtherSection(size),
      ],
    );
  }

  Widget allOtherSection(Size size) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: size.width - size.width * 0.13,
        height: size.width * 1.11,
        child: videoAndAllRelatedContentSection(size),
      ),
    );
  }

  Column videoAndAllRelatedContentSection(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VideoSection(width: size.width - size.width * 0.13, url: imageUrl),
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                style: GoogleFonts.cookie(fontSize: 50, letterSpacing: -9),
              ),
            ),
            const TextButtonWithIcon(
              icon: Icons.notifications_none_outlined,
              title: "Remind Me",
            ),
            const TextButtonWithIcon(
              icon: Icons.info_outlined,
              title: "Info",
            )
          ],
        ),
        const Text("Coming on Friday"),
        spaceHeight10,
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          discription,
          maxLines: 2,
          style: const TextStyle(color: greyColor),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  SizedBox dateSection(Size size) {
    return SizedBox(
      width: size.width * 0.13,
      height: size.width * 1.24,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          month,
          style: const TextStyle(fontSize: 14, color: greyColor),
        ),
        Text(
          date,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
        ),
      ]),
    );
  }
}
