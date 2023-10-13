import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/main_section_of_coming_soon.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NewAndHotBloc>().add(const NewAndHotEvent.getComingMovies());
    });

    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text("Error Occured"),
          );
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.comingSoon.isEmpty) {
          return const Center(
            child: Text("No data to show"),
          );
        } else {
          return ListView.separated(
              itemBuilder: (context, index) {
                final movieData = state.comingSoon[index];
                final date = DateTime.parse(movieData.releaseDate);
                final formatedDate = DateFormat.yMMMMd('en_US').format(date);

                return MainSectionOfComingSoon(
                  month: formatedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase(),
                  date: movieData.releaseDate.split('-')[1],
                  discription: movieData.discription,
                  imageUrl: movieData.posterPathUrl,
                  title: movieData.title,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(),
              itemCount: state.comingSoon.length);
        }
      },
    );
  }
}
