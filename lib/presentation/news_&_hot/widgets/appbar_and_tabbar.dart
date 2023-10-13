import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';

class AppbarAndTabbar extends StatelessWidget {
  const AppbarAndTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "News & Hot",
        style: GoogleFonts.montserrat(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        const Icon(
          Icons.cast,
          size: 30,
        ),
        spaceWidth10,
        Container(
          height: 25,
          width: 25,
          color: Colors.green,
        ),
      ],
      bottom: TabBar(
        isScrollable: true,
        indicator: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(35)),
        labelColor: blackColor,
        labelStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        tabs: const [
          Tab(
            text: "    🍿 Coming Soon     ",
          ),
          Tab(text: "  👀 Everyone's Watching  "),
        ],
      ),
    );
  }
}
