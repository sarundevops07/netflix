import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';

class TextButtonWithIcon extends StatelessWidget {
  const TextButtonWithIcon(
      {super.key,
      required this.icon,
      required this.title,
      this.iconSize = 23,
      this.fontSize = 12});
  final IconData icon;
  final String title;
  final double iconSize;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: whiteColor,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
