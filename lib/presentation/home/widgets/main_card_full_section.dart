import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/presentation/home/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class MainCardFullSection extends StatelessWidget {
  const MainCardFullSection(
      {super.key, required this.url, required this.title});
  final List<String> url;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleWidget(title: title),
          spaceHeight10,
          LimitedBox(
              maxHeight: size.height * 0.25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) {
                    if (index >= 0 && index < url.length) {
                      return MainCard(
                        url: url[index],
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              )),
        ],
      ),
    );
  }
}
