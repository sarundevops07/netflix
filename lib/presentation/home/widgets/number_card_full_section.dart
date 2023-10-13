import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class NumberCardSection extends StatelessWidget {
  const NumberCardSection({super.key, required this.title, required this.url});
  final String title;
  final List<String> url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleWidget(title: title),
          spaceHeight10,
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) {
                  if (index >= 0 && index < url.length) {
                    return NumberCard(
                      index: index,
                      url: url[index],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
