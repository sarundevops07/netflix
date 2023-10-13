import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/widgets/textbutton_with_icon.dart';

class MainPageAndBottomButtons extends StatelessWidget {
  final String url;
  const MainPageAndBottomButtons({required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        mainImageHome(size, url),
        bottomButtons(),
      ],
    );
  }

  Container mainImageHome(Size size, String url) {
    return Container(
      width: double.infinity,
      height: size.height * 0.89,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url),
        ),
      ),
    );
  }

  Positioned bottomButtons() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TextButtonWithIcon(
            icon: Icons.add,
            title: "My List",
            iconSize: 27,
            fontSize: 17,
          ),
          playButtonWidget(),
          const TextButtonWithIcon(
            icon: Icons.info,
            title: "Info",
            iconSize: 27,
            fontSize: 17,
          ),
        ],
      ),
    );
  }

  Padding playButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: blackColor,
        ),
        label: const Text(
          "Play",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: blackColor,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(whiteColor),
        ),
      ),
    );
  }
}
