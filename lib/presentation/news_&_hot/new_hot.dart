import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/appbar_and_tabbar.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/coming_soon.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/everyone_watching.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.width * 0.25),
          child: const AppbarAndTabbar(),
        ),
        body: const TabBarView(
          children: [
            ComingSoon(),
            EveryOneIsWatching(),
          ],
        ),
      ),
    );
  }
}
// dcndskjcndk ndkjnckjdsn \
