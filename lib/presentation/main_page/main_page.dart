import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/downloads.dart';
import 'package:netflix_clone/presentation/fast_laughs/fast_laughs.dart';
import 'package:netflix_clone/presentation/home/home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottomnav_bar.dart';
import 'package:netflix_clone/presentation/news_&_hot/new_hot.dart';
import 'package:netflix_clone/presentation/search/search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(title: "Title"),
    const NewAndHot(),
    const FastLaughs(),
    Search(),
    Downloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangedNotifier,
        builder: (context, index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
