// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/presentation/home/widgets/hiddable_app_bar.dart';
import 'package:netflix_clone/presentation/home/widgets/main_card_full_section.dart';
import 'package:netflix_clone/presentation/home/widgets/main_image_and_bottom_buttons.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card_full_section.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getTrendingPersons());
      context.read<HomeBloc>().add(const HomeEvent.getTrendingMovies());
      context.read<HomeBloc>().add(const HomeEvent.getTopTVShows());
    });
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;

                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isError) {
                        return const Center(
                          child: Text("Error Occured"),
                        );
                      } else if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.trendingPersons.isEmpty &&
                          state.getTopTVShows.isEmpty &&
                          state.trendingMovies.isEmpty) {
                        return const Center(
                          child: Text("List is Empty"),
                        );
                      }

                      final persons = state.trendingPersons
                          .map((e) => e.profilePathUrl)
                          .toList();

                      final tMovies = state.trendingMovies
                          .map((e) => e.posterPathUrl)
                          .toList();
                      // final shuffledTMovies = tMovies;
                      // shuffledTMovies.shuffle();
                      final tv = state.getTopTVShows
                          .map((e) => e.posterPathUrl)
                          .toList();

                      return ListView(
                        children: [
                          MainPageAndBottomButtons(
                              url: tMovies.isNotEmpty ? tMovies[7] : ""),
                          MainCardFullSection(
                            url: persons.length > 10
                                ? persons.sublist(0, 10)
                                : persons,
                            title: "Trending Persons",
                          ),
                          MainCardFullSection(
                            url: tMovies.length > 10
                                ? tMovies.sublist(0, 10)
                                : tMovies,
                            title: "Trending Movies",
                          ),
                          NumberCardSection(
                            url: tv.length > 10 ? tv.sublist(0, 10) : tv,
                            title: "Top 10 TV Shows in India Today",
                          ),
                          MainCardFullSection(
                            url: tMovies.length > 10
                                ? tMovies.sublist(0, 10)
                                : tMovies,
                            title: "Tense Dramas",
                          ),
                          MainCardFullSection(
                            url: tv.length > 10 ? tv.sublist(0, 10) : tv,
                            title: "South Indian Cinema",
                          ),
                        ],
                      );
                    },
                  ),
                  scrollNotifier.value == true
                      ? const HiddableAppBarWiget()
                      : spaceHeight10,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
