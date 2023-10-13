import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.url});
  final int index;
  final String url;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        mainCardWithSpaces(size),
        stackedNumber(),
      ],
    );
  }

  Row mainCardWithSpaces(Size size) {
    return Row(
      children: [
        const SizedBox(
          width: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 7.7,
          ),
          child: Container(
            height: size.height * 0.25,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              borderRadius: borderRadiusCirclular10,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Positioned stackedNumber() {
    return Positioned(
      top: 37,
      right: 115,
      child: BorderedText(
        strokeWidth: 7,
        strokeColor: whiteColor,
        child: Text(
          "${index + 1}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 150,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
