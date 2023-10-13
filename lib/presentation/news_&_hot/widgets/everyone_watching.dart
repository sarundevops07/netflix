import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/presentation/news_&_hot/widgets/everyones_main_section.dart';

class EveryOneIsWatching extends StatelessWidget {
  const EveryOneIsWatching({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.getEveryonesWatching());
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
        } else if (state.everyOnesWatching.isEmpty) {
          return const Center(
            child: Text("No data to display"),
          );
        } else {
          return ListView.separated(
              itemBuilder: (context, index) {
                final tvData = state.everyOnesWatching[index];
                return EveryOnesMainSection(
                  discription: tvData.discription,
                  imageUrl: tvData.posterPathUrl,
                  title: tvData.title,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(),
              itemCount: state.everyOnesWatching.length);
        }
      },
    );
  }
}
