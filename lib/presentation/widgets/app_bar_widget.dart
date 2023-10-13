import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: blackColor,
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Icon(
              Icons.cast,
              size: 30,
            ),
            spaceWidth10,
            Container(
              height: 25,
              width: 25,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
