import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/colors/colors.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';

class HiddableAppBarWiget extends StatelessWidget {
  const HiddableAppBarWiget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return hiddableAppBar(size);
  }

  Container hiddableAppBar(Size size) {
    return Container(
      width: double.infinity,
      height: size.width * 0.29,
      color: blackColor.withOpacity(0.7),
      child: Column(
        children: [
          hiddenAppBarFirstSection(size),
          hiddenAppBarSecondSection(),
        ],
      ),
    );
  }

  Row hiddenAppBarSecondSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("TV Shows", style: fontSize17WhiteColor),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Movies", style: fontSize17WhiteColor),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Categories", style: fontSize17WhiteColor),
        ),
      ],
    );
  }

  Row hiddenAppBarFirstSection(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          height: size.width * 0.15,
          image: const NetworkImage(
            netflixLogo,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25, right: 7),
          child: Row(
            children: [
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
        )
      ],
    );
  }
}
